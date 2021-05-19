# frozen_string_literal: true

module Tufts
  module Curation
    ##
    # An EAD work type
    class Ead < TuftsModel
      ##
      # Set indexer inside .inherited because Ead is actually an anonymous class
      # that inherits Tufts::Curation::Ead
      #
      # @argument subclass
      #   The anonymous class that's being used as Ead
      def self.inherited(subclass)
        super
        subclass.indexer = Tufts::Curation::EadIndexer
      end
    end
  end
end
