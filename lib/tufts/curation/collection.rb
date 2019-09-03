module Tufts
  module Curation
    ##
    # A base class for Tufts Collections
    class Collection < ActiveFedora::Base
      ##
      # Use `Hyrax::CollectionBehavior` in subclasses if it is available. Hyrax
      # applications will have this loaded.
      #
      # If it is unavailable, we skip loading the complex behavior and settle for having
      # `Hyrax::CoreMetadata` and `Hyrax::BasicMetadata` in place.
      def self.inherited(subclass)
        subclass.include 'Hyrax::CollectionBehavior'.constantize
        subclass.indexer = Hyrax::CollectionWithBasicMetadataIndexer
      rescue NameError => e
        warn 'Hyrax::CollectionBehavior is unavailable; skipping inclusion ' \
             "in #{subclass}.\n#{e}"
      end

      include Hyrax::CoreMetadata

      property :ead, predicate: ::Tufts::Vocab::Tufts.has_description do |index|
        index.as :stored_searchable
      end

      property :displays_in, predicate: ::Tufts::Vocab::Tufts.displays_in do |index|
        index.as :stored_searchable
      end

      include Tufts::Curation::Schema::Ordered

      # This must be included at the end, because it finalizes the metadata
      # schema (by adding accepts_nested_attributes)
      include Hyrax::BasicMetadata

      include Tufts::Curation::Schema::OrderedOverrides

      def work_order
        Tufts::Curation::CollectionOrder.where(collection_id: self.id).first
      end
    end
  end
end
