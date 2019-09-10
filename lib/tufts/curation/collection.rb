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

      ##
      # @function
      # Shortening the code to access the actual work-order data.
      # rubocop:disable Rails/Delegate
      def work_order
        collection_order_obj.work_order
      end
      # rubocop:enable Rails/Delegate

      ##
      # @function
      # Update the work_order of this collection, via the referenced CollectionOrder obj.
      #
      # @param (Array) new_order
      #   The new order for the Collection.
      def update_work_order(new_order)
        collection_order_obj.work_order = new_order
        collection_order_obj.save
      end


      private
        ##
        # @function
        # Get the CollectionOrder object related to the Collection.
        def collection_order_obj
          @collection_order_obj ||= Tufts::Curation::CollectionOrder.where(collection_id: id).first
        end
    end
  end
end
