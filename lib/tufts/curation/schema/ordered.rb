# frozen_string_literal: true

module Tufts
  module Curation
    module Schema
      ##
      # Schema adding ordered properties to tufts models.
      #
      # These properties are used to store the order for their corresponding
      # (unordered) properties. Don't set the value of these properties
      # directly. The values will be kept in sync by the setter method for the
      # corresponding property.
      #
      # @example setting an ordered property
      #    work.description = ['Desc 1', 'Desc 2']
      #    work.ordered_description # => "['Desc 1', 'Desc 2']"
      #
      module Ordered
        extend ActiveSupport::Concern

        included do
          property :ordered_creators,
                   predicate: ::Tufts::Vocab::Tufts.ordered_creators,
                   multiple: false do |index|
            index.as :symbol
          end

          property :ordered_descriptions,
                   predicate: ::Tufts::Vocab::Tufts.ordered_descriptions,
                   multiple: false do |index|
            index.as :symbol
          end
        end
      end
    end
  end
end
