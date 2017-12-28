# frozen_string_literal: true

module Tufts
  module Curation
    module Schema
      module Transcription
        extend ActiveSupport::Concern

        included do
          belongs_to :transcript,
                     predicate: ::RDF::Vocab::EBUCore.description,
                     class_name: 'ActiveFedora::Base'
        end
      end
    end
  end
end
