# frozen_string_literal: true

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

          solr_doc['discover_access_group_ssim'] = ['public']
        end
      end

      private

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
            (earliest..latest).to_a
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
          date.chomp('.')
        end
    end
  end
end
