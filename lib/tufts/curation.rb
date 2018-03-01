# frozen_string_literal: true
hyrax_path = $LOAD_PATH.find { |path| path.include?('hyrax-2') }
$LOAD_PATH.unshift(Pathname.new(hyrax_path).join('..', 'app').to_s)

require 'active_fedora'
require 'rdf/vocab'

require 'tufts/curation/indexer'
require 'tufts/curation/tufts_model'
require 'tufts/curation/collection'
require 'tufts/curation/file_set'

require 'tufts/curation/audio'
require 'tufts/curation/ead'
require 'tufts/curation/generic_object'
require 'tufts/curation/image'
require 'tufts/curation/pdf'
require 'tufts/curation/rcr'
require 'tufts/curation/tei'
require 'tufts/curation/video'
require 'tufts/curation/voting_record'
require 'tufts/curation/voting_record_indexer'

module Tufts
  ##
  # Shared models and curation tools for Tufts Hyrax repositories.
  module Curation
    MODELS = { audio:          Tufts::Curation::Audio,
               ead:            Tufts::Curation::Ead,
               generic_object: Tufts::Curation::GenericObject,
               image:          Tufts::Curation::Image,
               pdf:            Tufts::Curation::Pdf,
               rcr:            Tufts::Curation::Rcr,
               tei:            Tufts::Curation::Tei,
               video:          Tufts::Curation::Video,
               voting_record:  Tufts::Curation::VotingRecord }.freeze

    ##
    # Registers curation_concerns with a hyrax application using the passed
    # in configuration object.
    #
    # @example
    #    # config/initializers/hyrax.rb
    #    Hyrax.config do |config|
    #      Tufts::Curation.setup_models!(configuration: config)
    #      # ..
    #    end
    #
    # @param configuration [Hyrax::Configuration]
    #
    # For a block { |model| ... }
    # @yield each model class defined during setup
    # @yieldparam model [Class]
    #
    # @return [void]
    def setup_models!(configuration:)
      configuration.admin_set_predicate = Tufts::Vocab::Tufts.admin_set_member

      MODELS.each do |model_name, parent_class|
        class_name = model_name.to_s.camelize
        Object.const_set(class_name, Class.new(parent_class))

        yield class_name.constantize if block_given?

        configuration.register_curation_concern(model_name)
      end

      Object.const_set('FileSet', Class.new(Tufts::Curation::FileSet))
      Object.const_set('Collection', Class.new(Tufts::Curation::Collection))
    end
    module_function :setup_models!
  end
end
