# frozen_string_literal: true

require 'hyrax/controlled_vocabularies/location'
require 'models/concerns/hyrax/core_metadata'
require 'models/concerns/hyrax/basic_metadata'

require 'tufts/curation/vocab/tufts'
require 'tufts/curation/schema/administrative'
require 'tufts/curation/schema/descriptive'
require 'tufts/curation/schema/ordered'
require 'tufts/curation/schema/transcription'

module Tufts
  module Curation
    ##
    # A base class for Tufts Models
    class TuftsModel < ActiveFedora::Base
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

      ##
      # Overrides setter method to preserve order in a second property.
      #
      # @param values [Array<Object] Ordered array of values
      #
      # @return [Array<Object>]
      def creator=(values)
        super && self.ordered_creators = values.to_json
      end

      ##
      # Overrides getter method to return the creators in the correct order.
      #
      # @return [Array<Object>]
      def creator
        return super if ordered_creators.blank?
        JSON.parse(ordered_creators)
      end

      ##
      # Overrides setter method to preserve order in a second property.
      #
      # @param values [Array<Object>] Ordered array of values
      #
      # @return [Array<Object>]
      def description=(values)
        super && self.ordered_descriptions = values.to_json
      end

      ##
      # Overrides getter method to return the descriptions in the correct order.
      #
      # @return [Array<Object>]
      def description
        return super if ordered_descriptions.blank?
        JSON.parse(ordered_descriptions)
      end
    end
  end
end
