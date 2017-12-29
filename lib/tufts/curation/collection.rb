module Tufts
  module Curation
    ##
    # A base class for Tufts Collections
    class Collection < ActiveFedora::Base
      include Hyrax::CoreMetadata

      property :ead, predicate: ::Tufts::Vocab::Tufts.has_description do |index|
        index.as :stored_searchable
      end

      # This must be included at the end, because it finalizes the metadata
      # schema (by adding accepts_nested_attributes)
      include Hyrax::BasicMetadata
    end
  end
end
