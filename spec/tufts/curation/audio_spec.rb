# frozen_string_literal: true

require 'spec_helper'

describe Tufts::Curation::Audio do
  subject(:work) { described_class.new }

  it_behaves_like 'a tufts model'
  it_behaves_like 'a model with a transcription'
end
