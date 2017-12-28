# frozen_string_literal: true
hyrax_path = $LOAD_PATH.find { |path| path.include?('hyrax-2') }
$LOAD_PATH.unshift(Pathname.new(hyrax_path).join('..', 'app').to_s)

require 'active_fedora'
require 'rdf/vocab'

require 'tufts/curation/indexer'
require 'tufts/curation/tufts_model'
require 'tufts/curation/pdf'

module Tufts
  ##
  # Shared models and curation tools for Tufts Hyrax repositories.
  module Curation; end
end
