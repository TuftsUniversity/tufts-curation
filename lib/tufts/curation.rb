# frozen_string_literal: true
hyrax_path = $LOAD_PATH.find { |path| path.include?('hyrax-2') }
$LOAD_PATH.unshift(Pathname.new(hyrax_path).join('..', 'app').to_s)

require 'active_fedora'
require 'rdf/vocab'

require 'tufts/curation/indexer'
require 'tufts/curation/tufts_model'
require 'tufts/curation/collection'

require 'tufts/curation/audio'
require 'tufts/curation/ead'
require 'tufts/curation/generic_object'
require 'tufts/curation/image'
require 'tufts/curation/pdf'
require 'tufts/curation/rcr'
require 'tufts/curation/tei'
require 'tufts/curation/video'
require 'tufts/curation/voting_record'

module Tufts
  ##
  # Shared models and curation tools for Tufts Hyrax repositories.
  module Curation; end
end
