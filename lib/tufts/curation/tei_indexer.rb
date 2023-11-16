# frozen_string_literal: true

module Tufts
  module Curation
    class TeiIndexer < Tufts::Curation::Indexer
      # The Nokogiri document
      attr_accessor :noko
      def generate_solr_document
        super.tap do |solr_doc|
          begin
            # Only do this after the indexer has the file_set
            unless object.file_sets.nil?
              load_tei_xml(object)
              if @noko.nil?
                Rails.logger.warn("Couldn't find the TEI XML for #{solr_doc['id']}")
              else
                solr_doc['all_text_timv'] = @noko.xpath('//text()').text.gsub(/[^0-9A-Za-z]/, ' ')
              end
            end
          rescue NoMethodError => exception
            Rails.logger.warn("#{exception.class}: #{exception.message}")
          end
        end # End super.tap
      end
      # rubocop:enable Metrics/AbcSize
      # rubocop:enable Metrics/MethodLength
      # rubocop:enable Metrics/BlockLength
      # End def generate_solr_document

      private

        def load_tei_xml(active_fedora_obj)
          active_fedora_obj.file_sets.each do |file_set|
            f = file_set.original_file
            begin
              xml = Nokogiri::XML(f.content)
              next unless xml.xpath('/*').first.name.start_with? "TEI"
            rescue
              next
            end
            xml.remove_namespaces!
            @noko = xml
          end # end each file set
        end
      # end private
    end # End class TEIIndexer
  end
end
