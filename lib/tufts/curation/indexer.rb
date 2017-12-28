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
    end
  end
end
