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
          solr_doc['pub_date_facet_ssim'] = get_date_facet
        end
      end

      private

        def get_date_facet
          dates = object.primary_date
          temporals = object.temporal
          date_facets = []
          dates = temporals if dates.empty?
          return date_facets if dates.empty?

          dates.each do |date|
            # remove trailing period
            date = date.chomp('.') if date

            # handle n.d.
            date = "0" if !date.nil? && date[/n\.d/]

            begin
              parsed_date = Date.parse(date)
              date_facets.push(parsed_date)
            rescue
              logger.error("Unable to find a parsable date for: #{object.id}")
              next
            end
          end

          date_facets
        end
    end
  end
end
