# frozen_string_literal: true

module Tufts
  module Curation
    ##
    # A GenericObject work type
    class GenericObject < TuftsModel
      include Tufts::Curation::Schema::Transcription
    end
  end
end
