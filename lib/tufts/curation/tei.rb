# frozen_string_literal: true

module Tufts
  module Curation
    ##
    # A Tei work type
    class Tei < TuftsModel
      ##
      # Set indexer inside .inherited because Tei is actually an anonymous class
      # that inherits Tufts::Curation::Tei
      #
      # @argument subclass
      #   The anonymous class that's being used as Tei
      def self.inherited(subclass)
        super
        subclass.indexer = Tufts::Curation::TeiIndexer
      end
    end
  end
end
