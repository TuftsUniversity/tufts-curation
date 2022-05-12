# frozen_string_literal: true
require 'chronic'
require 'services/hyrax/thumbnail_path_service'
require 'services/hyrax/work_thumbnail_path_service'
require 'services/hyrax/indexes_thumbnails'
require 'indexers/hyrax/indexes_workflow'
require 'indexers/hyrax/work_indexer'
require 'indexers/hyrax/basic_metadata_indexer'
require 'indexers/hyrax/deep_indexing_service'
require 'indexers/concerns/hyrax/indexes_basic_metadata'
require 'indexers/concerns/hyrax/indexes_linked_metadata'

module Tufts
  module Curation
    ##
    # @note Effective use of this class depends on `Hyrax::WorkBehavior` which
    # is not included directly in models shipped here.
    #
    # @example
    #   indexer = Tufts::Curation::Indexer.new(a_work)
    #   indexer.generate_solr_document
    #
    # @example Using with a work class
    #   class Pdf < Tufts::Curation::TuftsModel
    #     include Hyrax::WorkBehavior
    #
    #     self.indexer = Tufts::Curation::Indexer
    #   end
    #
    #   pdf = Pdf.new(title: ['Comet in Moominland'])
    #   pdf.to_solr
    #
    class Indexer < Hyrax::WorkIndexer
      include Hyrax::IndexesBasicMetadata
      include Hyrax::IndexesLinkedMetadata
      delegate :logger, to: ActiveFedora::Base

      def generate_solr_document
        super.tap do |solr_doc|
          solr_doc['pub_date_facet_isim'] = date_facet
          index_sort_fields solr_doc
          create_facets solr_doc

          solr_doc['aggregate_date_tesim'] = date_facet + aggregate_date

          # used in trove
          create_formatted_fields solr_doc

          index_format_info solr_doc
          index_pub_date_for_sorting solr_doc

          solr_doc = add_dl_collections_facet(solr_doc)
          begin

            if object.file_sets && !object.file_sets.empty?
              solr_doc["file_set_date_created_tesim"] = object.file_sets[0].characterization_proxy.date_created.first.to_s
              unless object.file_sets[0].characterization_proxy.date_created.empty?
                date_string = object.file_sets[0].characterization_proxy.date_created.first.to_s

                values = date_string.split(' ').first.split(':')
                date_string = values[0] + '-' + values[1] + '-' + values[2] if values.length >= 2

                solr_doc["file_set_date_created_simplified_tesim"] = [date_string]
              end
            end
          rescue
            logger.warn("issue indexing file set date created for #{object.id}")
          end

          begin
            # human_readable_type_sim
            complex_file_set_types = []
            if object.file_sets && !object.file_sets.empty?
              object.file_sets.each do |fs|
                if fs.mime_type
                  subtype = fs.mime_type.split('/').last.downcase
                  complex_file_set_types << subtype
                end
              end
              solr_doc["file_set_complex_types_sim"] = complex_file_set_types
            end
          rescue
            logger.warn("issue indexing file set complex types created for #{object.id}")
          end

          begin
            solr_doc["file_set_format_tesim"] = [object.file_sets[0].characterization_proxy.format_label] if object.file_sets && !object.file_sets.empty?
          rescue
            logger.warn("issue indexing file set format for #{object.id}")
          end

          begin
            # Batches store ids as a serialized array. To retrieve them, we query
            # "ids LIKE...". To avoid potential substring collisions (this shouldn't
            # happen in normal operation), we follow up by filtering the results with
            # `#select`, before mapping to batch ids.
            batches = Batch.where("ids LIKE '%#{object.id}%'")
                           .select { |batch| batch.ids.include?(object.id) }
                           .map(&:id)

            unless batches.empty?
              batch_key = Solrizer.solr_name('batch', :stored_searchable)
              solr_doc[batch_key] = batches
            end
          rescue NameError
            # TDLR-956 - tdl_on_hyrax will raise NameError exception because Batch is uninitialized.
            # Ignore this for now  but figure out why it has started happening and fix it.
            # When this is fixed, remove indexer.rb from .rubocop.yml.
          end

          # TDLR-866 - allow public discovery access - ie, users should not have to be
          # logged in to see Tufts-only objects in search results.
          displays_in = solr_doc['displays_in_tesim']
          solr_doc['discover_access_group_ssim'] = ['public'] if displays_in.present? && displays_in.include?('dl')
        end
      end

      private

        def index_pub_date_for_sorting(solr_doc)
          dates = Array(object.primary_date)

          dates = Array(object.temporal) if dates.empty?

          dates = ['n.d.'] if dates == [""]

          unless dates.empty?
            date = dates[0]

            # remove trailing period
            date = date.chomp('.') if date

            valid_date = Time.new.in_time_zone

            date = date.to_s.rstrip

            date = date.split[1..10].join(' ') if !date.nil? && !date[/^c/].nil?

            if (/^Circa \d{4} – \d{4}$/ =~ date) || (/^Circa \d{4}–\d{4}$/ =~ date)
              _earliest, latest = date.split('–').flat_map(&:to_s)
              date = latest
              date = date.delete(" ")
            end

            if (/^circa \d{4} – \d{4}$/ =~ date) || (/^circa \d{4}–\d{4}$/ =~ date)
              _earliest, latest = date.split('–').flat_map(&:to_s)
              date = latest
              date = date.delete(" ")
            end

            if (/^Circa \d{4} -- \d{4}$/ =~ date) || (/^circa \d{4}--\d{4}$/ =~ date)
              _earliest, latest = date.split('–').flat_map(&:to_s)
              date = latest
              date = date.delete(" ")
            end

            if /^\d{4} -- \d{4}$/ =~ date
              _earliest, latest = date.split('--').flat_map(&:to_s)
              date = latest
              date = date.delete(" ")
            end

            if /^\d{4} - \d{4}$/ =~ date
              _earliest, latest = date.split('-').flat_map(&:to_s)
              date = latest
              date = date.delete(" ")
            end
            # end handling circa dates

            # handle 01/01/2004 style dates
            if !date.nil? && !date[/\//].nil?
              date = date[date.rindex('/') + 1..date.length]
              # check for 2 digit year
              date = "19" + date if date.length == 2
            end
            # end handle 01/01/2004 style dates

            # handle n.d.
            date = "0" if !date.nil? && date[/n\.d/]
            # end n.d.

            # handle YYYY-MM-DD and MM-DD-YYYY
            if !date.nil? && !date[/-/].nil?
              date = if date.index('-') == 4
                       date[0..date.index('-') - 1]
                     else
                       date[date.rindex('-') + 1..date.length]
                     end
            end
            # end YYYY-MM-DD

            # handle ua084 collection which has dates set as 0000-00-00
            pid = object.legacy_pid.to_s.downcase
            date = "1980" if pid[/tufts\:ua084/]
            # end ua084

            # Chronic is not gonna like the 4 digit date here it may interpret as military time, and
            # this may be imperfect but lets try this.
            unless date.nil? || date == "0"
              if date.length == 4
                date += "-01-01"
              elsif date.length == 9
                date = date[0..3] += "-01-01"
              elsif date.length == 7
                date = date[0..3] += "-01-01"
              end
              unparsed_date = Chronic.parse(date)
              valid_date = Time.at(unparsed_date).in_time_zone unless unparsed_date.nil?
            end
            valid_date_string = if date == "0"
                                  "0"
                                else
                                  valid_date.strftime("%Y")
                                end
            # puts "valid date string: #{valid_date_string}"
            Solrizer.insert_field(solr_doc, 'pub_date_sortable', valid_date_string.to_i, :stored_sortable)
          end
        end

        def aggregate_date
          aggregate_date = temporal_and_created

          aggregate_date.each do |date|
            aggregate_date += extract_year(date)
            date = format_dd_mm_yyyy(date)
            date = format_nd(date)
            date = format_yyyy_mm_dd(date)
            date = format_circa(date)
            aggregate_date += Array(date)
          end

          aggregate_date.reject! { |val| val.to_s.include? ":" }

          aggregate_date
        end

        def index_format_info(solr_doc)
          model = object.class.to_s
          model_s = case model
                    when "VotingRecord"
                      "Datasets"
                    when "Ead"
                      "Collection Guides"
                    when "Audio"
                      "Audio"
                    when "Image"
                      legacy_pid = object.legacy_pid
                      legacy_pid = legacy_pid.nil? ? "" : legacy_pid.first
                      legacy_pid.starts_with?("tufts:MS115") ? "Datasets" : "Images"
                    when "Pdf", "Tei"
                      legacy_pid = object.legacy_pid
                      legacy_pid = legacy_pid.nil? ? "" : legacy_pid.first
                      legacy_pid.starts_with?("tufts:UP") ? "Periodicals" : "Text"
                    when "GenericObject"
                      "Generic Objects"
                    when "Video"
                      "Videos"
                    when "Rcr"
                      "Collection Creators"
                    else
                      return
                      # COLLECTION_ERROR_LOG.error "Could not determine Format for : #{pid} with model #{model.inspect}"
                    end

          Solrizer.insert_field(solr_doc, 'object_type', model_s, :facetable) if model_s
        end

        def create_formatted_fields(solr_doc)
          dates_created = object.primary_date
          dates_created.each do |date_created|
            # we're storing BCE dates as -0462 using ISO-6801 standard but we want to retrieve them for display formatted for the screen
            date_created = "#{date_created.sub(/^[0\-]*/, '')} BCE" if date_created.start_with? '-'

            Solrizer.insert_field(solr_doc, 'date_created_formatted', date_created.to_s, :stored_searchable) # tesim
          end
        end

        def format_dd_mm_yyyy(date)
          # handle 01/01/2004 style dates
          if !date.nil? && !date[/\//].nil?
            date = date[date.rindex('/') + 1..date.length]
            # check for 2 digit year
            date = "19" + date if date.length == 2
          end
          # end handle 01/01/2004 style dates
          date
        end

        def format_nd(date)
          # handle n.d.
          date = "0" if !date.nil? && date[/n\.d/]
          # end n.d.
          date
        end

        def format_circa(date, allow_multiple = false)
          if (/^Circa \d{4} – \d{4}$/ =~ date) || (/^Circa \d{4}–\d{4}$/ =~ date) || (/^circa \d{4} – \d{4}$/ =~ date) || (/^circa \d{4}–\d{4}$/ =~ date)
            earliest, latest = date.split('–').flat_map(&:to_s)
            date = latest
            date = date.delete(" ")
          end

          if (/^Circa \d{4} -- \d{4}$/ =~ date) || (/^circa \d{4}--\d{4}$/ =~ date) || (/^circa \d{4} -- \d{4}$/ =~ date)
            earliest, latest = date.split('--').flat_map(&:to_s)
            date = latest
            date = date.delete(" ")
          end
          # end handling circa dates
          return earliest, latest if allow_multiple

          date
        end

        def format_yyyy_mm_dd(date)
          # handle YYYY-MM-DD and MM-DD-YYYY
          if !date.nil? && !date[/-/].nil?
            date = if date.index('-') == 4
                     date[0..date.index('-') - 1]
                   else
                     date[date.rindex('-') + 1..date.length]
                   end
          end
          # end YYYY-MM-DD
          date
        end

        def temporal_and_created
          dates = []
          # dates += object.date_created.to_a
          dates += object.primary_date.to_a
          dates += object.temporal.to_a
          date_created = []

          begin
            if object.file_sets && !object.file_sets.empty?
              #    date_created += [object.file_sets[0].characterization_proxy.date_created.first.to_s]
              unless object.file_sets[0].characterization_proxy.date_created.empty?
                date_string = object.file_sets[0].characterization_proxy.date_created.first.to_s

                values = date_string.split(' ').first.split(':')
                date_string = values[0] + '-' + values[1] + '-' + values[2] if values.length >= 2

                date_created += [date_string]
              end
            end
          rescue
          end

          dates += date_created
          dates
        end

        # MISCNOTES:
        # There will be no facet for RCR. There will be no way to reach RCR via browse.
        # 3. There will be a facet for "collection guides", namely EAD, namely the landing page view we discussed on Friday.
        def create_facets(solr_doc)
          index_names_info(solr_doc)
          index_subject_info(solr_doc)
          index_format_info(solr_doc)
        end

        def index_names_info(solr_doc)
          [:creator, :contributor, :personal_name, :corporate_name].each do |name_field|
            names = object.send(name_field)
            index_array(solr_doc, 'names', names, :facetable) if !names.nil? && (names.is_a?(Array) || names.is_a?(ActiveTriples::Relation))
            index_single(solr_doc, 'names', names, :facetable) if !names.nil? && names.is_a?(String)
          end
          solr_doc
        end

        def index_subject_info(solr_doc)
          [:subject, :corporate_name, :personal_name, :geog_name, :geographic_name].each do |subject_field|
            subjects = object.send(subject_field)
            if !subjects.nil? && (subjects.is_a?(Array) || subjects.is_a?(ActiveTriples::Relation))
              index_array(solr_doc, 'subject_topic', subjects, :facetable) # subject_sim
            end
            if !subjects.nil? && subjects.is_a?(String)
              index_single(solr_doc, 'subject_topic', subjects, :facetable) # subject_sim
            end
          end
        end

        def index_array(solr_doc, field_prefix, values, index_type)
          values.each do |name|
            index_single(solr_doc, field_prefix, name, index_type)
          end
        end

        def index_single(solr_doc, field_prefix, name, index_type)
          Solrizer.insert_field(solr_doc, field_prefix, name, index_type) if name.present? && !name.downcase.include?('unknown')
        end

        def index_sort_fields(solr_doc)
          # CREATOR SORT
          Solrizer.insert_field(solr_doc, 'author', object.creator.first, :sortable) unless object.creator.nil? || object.creator.empty?

          # TITLE SORT
          Solrizer.insert_field(solr_doc, 'title', object.title, :sortable) if object.title
        end

        # @return [Array<Integer>] a list of integers representing the years referenced in the dates
        def date_facet
          dates = object.primary_date
          temporals = object.temporal
          date_facets = []
          dates = temporals if dates.empty?
          return date_facets if dates.empty?

          dates.flat_map { |date| extract_year(date) }.uniq
        end

        # Return an integer corresponding to the year in a string  date
        # Accepts years in form YYYY, iso8601, and ranges YYYY-YYYY
        # @param date [String]
        # @return [Array<Integer>] the four digit integer(s) corresponding to year(s) in the date or date range
        def extract_year(date)
          date = preflight_date(date)

          if date.blank? || date[/n\.d/]
            []
          elsif /^\d{4}$/ =~ date
            # Date.iso8601 doesn't support YYYY dates
            [date.to_i]
          elsif /^\d{4}-\d{4}$/ =~ date
            # date range in YYYY-YYYY format
            earliest, latest = date.split('-').flat_map(&:to_i)
            begin
              (earliest..latest).to_a
            rescue RangeError
              (earliest).to_a
            end
          elsif (/^Circa \d{4} – \d{4}$/ =~ date) || (/^Circa \d{4}–\d{4}$/ =~ date) || (/^circa \d{4} – \d{4}$/ =~ date) || (/^circa \d{4}–\d{4}$/ =~ date)
            date.gsub!("Circa", "")
            date.gsub!("circa", "")
            date.delete!(" ")
            begin
              (earliest..latest).to_a
            rescue TypeError
              logger.error "TypeError: can't iterate from NilClass for #{date}"
              return []
            rescue RangeError
              logger.error "Range Error for #{date}"
              return []
            end
          elsif (/^Circa \d{4} -- \d{4}$/ =~ date) || (/^circa \d{4}--\d{4}$/ =~ date) || (/^circa \d{4} -- \d{4}$/ =~ date)
            date.gsub!("Circa", "")
            date.gsub!("circa", "")
            date.delete!(" ")
            begin
              earliest, latest = date.split('--').flat_map(&:to_i)
              (earliest..latest).to_a
            rescue TypeError
              logger.error "TypeError: can't iterate from NilClass for #{date}"
              return []
            rescue RangeError
              logger.error "Range Error for #{date}"
              return []
            end
          else
            [Date.iso8601(date).year]
          end
        rescue ArgumentError
          logger.error "Invalid date: #{date.inspect}, trying to index #{object.id}"
          []
        end

        # Returns date wth some basic clean up of common problems we have in
        # our data.
        # @param date [String]
        def preflight_date(date)
          # remove trailing period
          date.chomp('.').strip
        end

        # Creates a special collections facet for the DL to use, to remove NNV collections from DL.
        def add_dl_collections_facet(solr_doc)
          solr_doc['dl_member_of_collections_ssim'] = object.member_of_collections.select { |o| o.visibility != 'restricted' }.map(&:first_title)
          solr_doc
        end
    end
  end
end
