# frozen_string_literal: true

require 'rdf'

module Tufts
  module Curation
    module Vocab
      class Bibframe < RDF::Vocabulary("http://id.loc.gov/ontologies/bibframe/")
        term :dissertation
      end
    end
  end
end
