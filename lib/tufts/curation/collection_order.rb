require 'active_record'

module Tufts
  module Curation
    class CollectionOrder < ::ActiveRecord::Base
      self.table_name = 'tufts_collection_orders'

      enum item_type: [:work, :subcollection]

      validates :item_type, presence: true
      validates :collection_id, presence: true, uniqueness: { scope: :item_type }

      ##
      # @function
      # Set the order, and only allow Arrays.
      #
      # @param (Array) new_order
      #   The new order for the Collection.
      def order=(new_order)
        if new_order.is_a? Array
          super(new_order)
        else
          Rails.logger.info("#{new_order} is not an array!")
        end
      end
    end
  end
end
