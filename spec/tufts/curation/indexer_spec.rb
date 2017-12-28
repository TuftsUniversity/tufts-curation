# frozen_string_literal: true

require 'spec_helper'

describe Tufts::Curation::Indexer do
  subject(:indexer) { described_class.new(work) }
  let(:work)        { Tufts::Curation::TuftsModel.new }

  it { is_expected.not_to be_nil }
end
