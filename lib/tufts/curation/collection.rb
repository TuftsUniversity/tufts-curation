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
        subclass.include '::Hyrax::CollectionBehavior'.constantize
        subclass.indexer = Hyrax::CollectionWithBasicMetadataIndexer
      rescue NameError => e
        warn 'Hyrax::CollectionBehavior is unavailable; skipping inclusion ' \
             "in #{subclass}.\n#{e}"
      end

      include Hyrax::BasicMetadata

      property :call_number, predicate: ::Tufts::Vocab::Tufts.call_number do |index|
        index.as :stored_searchable
      end

      property :finding_aid, predicate: ::Tufts::Vocab::Tufts.finding_aid do |index|
        index.as :stored_searchable
      end

      property :displays_in, predicate: ::Tufts::Vocab::Tufts.displays_in do |index|
        index.as :stored_searchable
      end

      property :legacy_pid, predicate: ::Tufts::Vocab::Tufts.legacy_pid, multiple: false do |index|
        index.as :stored_searchable
      end

      include Tufts::Curation::Schema::Ordered

      # This must be included at the end, because it finalizes the metadata
      # schema (by adding accepts_nested_attributes)
      include Hyrax::BasicMetadata

      include Tufts::Curation::Schema::OrderedOverrides

      include Tufts::Curation::CollectionOrderSupport
    end
  end
end
