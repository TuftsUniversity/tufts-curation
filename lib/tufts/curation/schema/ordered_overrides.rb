# frozen_string_literal: true

module Tufts
  module Curation
    module Schema
      module OrderedOverrides
        extend ActiveSupport::Concern

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
end
