# frozen_string_literal: true

require 'spec_helper'

describe Tufts::Curation::Schema::Transcription do
  subject(:work) { model_class.new }

  let(:model_class) do
    TranscribedMedia = Class.new(ActiveFedora::Base) do
      include Tufts::Curation::Schema::Transcription
    end
  end

  it_behaves_like 'a model with a transcription'
end
