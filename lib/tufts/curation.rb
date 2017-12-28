# frozen_string_literal: true
hyrax_path = $LOAD_PATH.find { |path| path.include?('hyrax-2') }
$LOAD_PATH.unshift(Pathname.new(hyrax_path).join('..', 'app').to_s)

require 'active_fedora'
require 'rdf/vocab'

require 'hyrax/controlled_vocabularies/location'
require 'models/concerns/hyrax/core_metadata'
require 'models/concerns/hyrax/basic_metadata'

require 'tufts/curation/vocab/tufts'
require 'tufts/curation/schema/administrative'
require 'tufts/curation/schema/descriptive'
require 'tufts/curation/schema/transcription'

require 'tufts/curation/tufts_model'
require 'tufts/curation/pdf'

module Tufts
  ##
  # Shared models and curation tools for Tufts Hyrax repositories.
  module Curation; end
end
