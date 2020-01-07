# @file
# Contains all the code that connects Collections to their CollectionOrders

module Tufts
  module Curation
    module CollectionOrderSupport
      extend ActiveSupport::Concern

      included do
        before_destroy :destroy_collection_orders
      end

      ##
      # @function
      # Shortening the code to access the actual work-order json.
      def work_order
        work_order_obj.order.nil? [] : JSON.parse(work_order_obj.order)
      end

      ##
      # @function
      # Shortening the code to access the actual subcollection-order json.
      def subcollection_order
        subcollection_order_obj.order.nil? [] : JSON.parse(subcollection_order_obj.order)
      end

      ##
      # @function
      # Update the work_order of this collection, via the referenced CollectionOrder obj.
      #
      # @param (Array) new_order
      #   The new order for the Collection.
      # @param (sym) type
      #   The type of order to update (:work or :subcollection)
      def update_order(new_order, type)
        case type
        when :work
          target_order = work_order_obj
        when :subcollection
          target_order = subcollection_order_obj
        else
          raise "#{type} is not a valid type of Tufts::Curation::CollectionOrder"
        end

        target_order.order = new_order
        target_order.save!
      end

      private

        ##
        # @function
        # Get the :work  CollectionOrder object related to the Collection.
        def work_order_obj
          @work_order_obj ||= retrieve_or_create_collection_order(:work)
        end

        ##
        # @function
        # Get the :work  CollectionOrder object related to the Collection.
        def subcollection_order_obj
          @subcollection_order_obj ||= retrieve_or_create_collection_order(:subcollection)
        end

        ##
        # @function
        # Retrieves a CollectionOrder object for this collection, based on type.
        # Creates a new CollectionOrder object if it can't find one.
        # @param {sym} type
        #   :work or :subcollection - everything else will error.
        def retrieve_or_create_collection_order(type)
          Tufts::Curation::CollectionOrder.where(collection_id: id, item_type: type).first!
        rescue
          Tufts::Curation::CollectionOrder.create!(collection_id: id, item_type: type)
        end

        ##
        # @function
        # Destroys any orders associated with collection before destroying collection.
        def destroy_collection_orders
          collection_orders = Tufts::Curation::CollectionOrder.where(collection_id: id)
          collection_orders.each(&:destroy) unless collection_orders.empty?
        end
    end
  end
end
