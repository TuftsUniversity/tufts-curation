# frozen_string_literal: true

module Tufts
  module Curation
    # rubocop:disable Metrics/ClassLength
    class EadIndexer < Tufts::Curation::Indexer
      # The Nokogiri document
      attr_accessor :noko

      # rubocop:disable Metrics/MethodLength
      def generate_solr_document
        super.tap do |solr_doc|
          if object.file_sets && !object.file_sets.empty?
            results = {}
            id = object.id
            find_indexable_fields(id, results)
            # puts "#{results}"
            results.each do |field_name, field_values|
              # puts("  #{field_name}")
              if solr_doc["#{field_name}_tesim"].nil?
                solr_doc["#{field_name}_tesim"] = field_values
              else
                solr_doc["#{field_name}_tesim"] += field_values
              end
            end
            # Only do this after the indexer has the file_set
            load_ead_xml(object)
            if @noko.nil?
              Rails.logger.warn("Couldn't find the Ead XML for #{solr_doc['id']}")
            else
              solr_doc['all_text_timv'] = @noko.xpath('//text()').text.gsub(/[^0-9A-Za-z]/, ' ')
            end
          end
        end # End super.tap
      end
      # rubocop:enable Metrics/AbcSize
      # rubocop:enable Metrics/MethodLength
      # rubocop:enable Metrics/BlockLength
      # End def generate_solr_document

      private

        def load_ead_xml(active_fedora_obj)
          # rubocop:disable Style/GuardClause
          if active_fedora_obj.file_sets && !active_fedora_obj.file_sets.empty?
            active_fedora_obj.file_sets.each do |file_set|
              f = file_set.original_file
              begin
                xml = Nokogiri::XML(f.content)
                next unless xml.xpath('/*').first.name == 'ead'
              rescue
                next
              end
              xml.remove_namespaces!
              @noko = xml
            end # end each file set
          end
        end

        # rubocop:disable Metrics/MethodLength
        def find_indexable_fields(id, results)
          document_fedora = ActiveFedora::Base.find(id)
          if docuemnt_fedora.file_sets && !docuemnt_fedora.file_sets.empty?
            document_ead = Nokogiri::XML(document_fedora.file_sets.first.original_file.content)
            document_ead.remove_namespaces!

            archdescs = document_ead.xpath('//ead/archdesc')

            return false if archdescs.empty?

            archdescs.each do |archdesc|
              find_controlaccess(archdesc, results)
              find_dsc(archdesc, results)
            end

            # results is a hash table whose keys are field names and values are hash tables with field values as both key and value, like:
            # {"genreform"=>{"Diaries"=>"Diaries", "Sketchbooks"=>"Sketchbooks"}, "subject"=>{"Adolescence"=>"Adolescence", "Advertising"=>"Advertising"}}.
            # The reason to have hash tables within hash tables is for best insertion performance and so that field values aren't duplicated, but
            # it's a little confusing as a returned result, so convert the inner hash tables to arrays so that the above example would look like"
            # {"genreform"=>["Diaries", "Sketchbooks"], "subject"=>["Adolescence", "Advertising"]}.
            results.each do |field_name, field_values|
              results[field_name] = field_values.keys
            end
          end

          true
        end

        def find_controlaccess(node, results)
          controlaccess = node.xpath('./controlaccess')

          return false if controlaccess.empty?

          # puts('  ' + node.name + (node.name == 'archdesc' ? '' : (' ' + node['level'] + ' ' + node['id'])))
          find_tag(controlaccess, 'persname', results)
          find_tag(controlaccess, 'corpname', results)
          find_tag(controlaccess, 'famname', results)
          find_tag(controlaccess, 'geogname', results)
          find_tag(controlaccess, 'genreform', results)
          find_tag(controlaccess, 'subject', results)
          # find_tag(controlaccess, 'title', results)

          true
        end

        def find_dsc(node, results)
          dsc = node.xpath('./dsc')

          return false if dsc.empty?

          unless find_series(dsc, results)  # ASpace series (c)
            find_series(dsc, results, 1)    # non-ASpace series (c01, c02...)
          end

          true
        end

        def find_series(node, results, level = 0)
          if level.zero?
            level_string = ''
            next_level = 0
          else
            level_string = format('%02d', level)
            next_level = level + 1
          end

          serieses = node.xpath('./c' + level_string)

          return false if serieses.empty?

          serieses.each do |series|
            find_controlaccess(series, results)
            find_series(series, results, next_level)
          end

          true
        end

        def find_tag(node, tag, results)
          subnodes = node.xpath('./' + tag)

          return false if subnodes.empty?

          # puts('    ' + tag)
          tag_hash = results[tag]

          if tag_hash.nil?
            tag_hash = {}
            results[tag] = tag_hash
          end

          subnodes.each do |subnode|
            # puts('      ' + subnode.text)
            tag_hash[subnode.text] = subnode.text
          end

          true
        end
      # end private
    end # End class VotingRecordIndexer
  end
end
