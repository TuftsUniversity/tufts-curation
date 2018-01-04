# frozen_string_literal: true

require 'spec_helper'
require 'set'

describe Tufts::Curation do
  describe '.setup_models!' do
    let(:configuration) { configuration_class.new }

    let(:configuration_class) do
      # rubocop:disable RSpec/InstanceVariable
      Class.new do
        attr_accessor :admin_set_predicate
        attr_reader :registered_concerns

        def register_curation_concern(*curation_concern_types)
          @registered_concerns ||= Set.new
          @registered_concerns.merge(curation_concern_types)
        end

        def curation_concerns
          @registered_concerns.map { |model_name| model_name.to_s.camelize.constantize }
        end
      end
      # rubocop:enable RSpec/InstanceVariable
    end

    let(:expected_concerns) { described_class::MODELS.keys }

    it 'registers concerns for the objects' do
      expect { described_class.setup_models!(configuration: configuration) }
        .to change { configuration.registered_concerns }
        .to contain_exactly(*expected_concerns)
    end

    it 'defines configuration#admin_set_predicate' do
      expect { described_class.setup_models!(configuration: configuration) }
        .to change { configuration.admin_set_predicate }
        .to Tufts::Vocab::Tufts.admin_set_member
    end

    it 'defines Collection' do
      described_class.setup_models!(configuration: configuration)
      expect(defined?(Collection)).to eq 'constant'
    end

    it 'defines FileSet' do
      described_class.setup_models!(configuration: configuration)
      expect(defined?(FileSet)).to eq 'constant'
    end

    it 'yields each concern type' do
      expect { |b| described_class.setup_models!(configuration: configuration, &b) }
        .to yield_control.exactly(expected_concerns.count).times
    end
  end
end
