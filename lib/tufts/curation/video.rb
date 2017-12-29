# frozen_string_literal: true

module Tufts
  module Curation
    ##
    # A Video work type
    class Video < TuftsModel
      include Tufts::Curation::Schema::Transcription
    end
  end
end
