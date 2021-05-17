# frozen_string_literal: true

module Tufts
  module Curation
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
      # End def generate_solr_document

      # end private
    end # End class VotingRecordIndexer
  end
end
