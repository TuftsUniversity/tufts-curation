# frozen_string_literal: true

require 'spec_helper'

describe Tufts::Curation::Schema::Descriptive do
  subject(:work) { model_class.new }

  let(:model_class) do
    Class.new(ActiveFedora::Base) do
      include Tufts::Curation::Schema::Descriptive
    end
  end

  it_behaves_like 'a model with descriptive metadata attributes'
end
