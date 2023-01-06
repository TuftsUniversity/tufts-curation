# frozen_string_literal: true

module Tufts
  module Curation
    module Schema
      module Transcription
        extend ActiveSupport::Concern

        included do
          belongs_to :transcript,
                     predicate: ::Tufts::Vocab::Tufts.transcription_of,
                     class_name: 'ActiveFedora::Base'
        end
      end
    end
  end
end
