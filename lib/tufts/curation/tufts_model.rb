# frozen_string_literal: true

require 'hyrax/controlled_vocabularies/location'
require 'hyrax/controlled_vocabularies/resource_label_caching'
require 'models/concerns/hyrax/core_metadata'
require 'models/concerns/hyrax/basic_metadata'

require 'tufts/curation/vocab/tufts'
require 'tufts/curation/vocab/bibframe'
require 'tufts/curation/schema/administrative'
require 'tufts/curation/schema/descriptive'
require 'tufts/curation/schema/ordered'
require 'tufts/curation/schema/ordered_overrides'
require 'tufts/curation/schema/transcription'

module Tufts
  module Curation
    ##
    # A base class for Tufts Models
    class TuftsModel < ActiveFedora::Base
      ##
      # Use `Hyrax::Workbehavior` in subclasses if it is available. Hyrax
      # applications will have this loaded.
      #
      # If it is unavailable, we skip loading the complex behavior and settle for having
      # `Hyrax::CoreMetadata` and `Hyrax::BasicMetadata` in place.
      def self.inherited(subclass)
        subclass.include 'Hyrax::WorkBehavior'.constantize
        subclass.indexer = Tufts::Curation::Indexer
      rescue NameError => e
        # Don't bother reporting failure to load for classes defined in this
        # namespace, which are assumed to be abstract.
        return if subclass.parent == Tufts::Curation
        warn 'Hyrax::WorkBehavior is unavailable; skipping ' \
             "inclusion in #{subclass}.\n#{e}"
      end

      include Hyrax::CoreMetadata

      validates :title, presence: { message: 'Your work must have a title.' }

      validates :title, length: {
        maximum: 1,
        message: 'There can be only one title'
      }

      include Tufts::Curation::Schema::Administrative
      include Tufts::Curation::Schema::Descriptive
      include Tufts::Curation::Schema::Ordered

      # This must be included at the end, because it finalizes the metadata
      # schema (by adding accepts_nested_attributes)
      include Hyrax::BasicMetadata

      include Tufts::Curation::Schema::OrderedOverrides
    end
  end
end
