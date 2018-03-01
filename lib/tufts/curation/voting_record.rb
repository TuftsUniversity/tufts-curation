# frozen_string_literal: true

module Tufts
  module Curation
    ##
    # A Voting Record work type
    class VotingRecord < TuftsModel
      ##
      # Set indexer inside .inherited because VotingRecord is actually an anonymous class
      # that inherits Tufts::Curation::VotingRecord
      #
      # @argument subclass
      #   The anonymous class that's being used as VotingRecord
      def self.inherited(subclass)
        super
        subclass.indexer=Tufts::Curation::VotingRecordIndexer
      end
    end
  end
end
