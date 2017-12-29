# frozen_string_literal: true

module Tufts
  module Curation
    ##
    # An Audio work type
    class Audio < TuftsModel
      include Tufts::Curation::Schema::Transcription
    end
  end
end
