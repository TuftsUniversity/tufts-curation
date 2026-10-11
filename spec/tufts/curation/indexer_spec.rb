# frozen_string_literal: true

require 'spec_helper'

describe Tufts::Curation::Indexer do
  subject(:indexer) { described_class.new(work) }
  let(:work)        { Tufts::Curation::TuftsModel.new }

  it { is_expected.not_to be_nil }

  describe '#normalize_date' do
    it 'handles a standard year' do
      expect(indexer.send(:normalize_date, '1987')).to eq('1987')
    end

    it 'handles a full date' do
      expect(indexer.send(:normalize_date, '1987 January 15')).to eq('1987 January 15')
    end

    it 'handles a circa year' do
      expect(indexer.send(:normalize_date, 'circa 1987')).to eq('1987')
    end

    it 'handles a circa date range the dash' do
      expect(indexer.send(:normalize_date, 'Circa 1987 - 1990')).to eq('1990')
    end

    it 'handles a circa date range the double dash' do
      expect(indexer.send(:normalize_date, 'Circa 1987 –- 1990')).to eq('1990')
    end

    it 'handles a circa date range without spaces around the dash' do
      expect(indexer.send(:normalize_date, 'Circa 1987–1990')).to eq('1990')
    end

    it 'handles a lowercase circa date range' do
      expect(indexer.send(:normalize_date, 'circa 1887 - 1890')).to eq('1890')
    end

    it 'handles a lowercase circa date range double dash' do
      expect(indexer.send(:normalize_date, 'circa 1887 –- 1890')).to eq('1890')
    end

    it 'handles a date range' do
      expect(indexer.send(:normalize_date, '1987 - 1990')).to eq('1990')
    end

    it 'handles a date with extra whitespace' do
      expect(indexer.send(:normalize_date, '  1987   January   15  ')).to eq('1987 January 15')
    end

    it 'handels a data with format YYYY-MM-DD' do
      expect(indexer.send(:normalize_date, '2004-01-02')).to eq('2004')
    end

    it 'handels a data with format MM-DD-YYYY' do
      expect(indexer.send(:normalize_date, '02-01-2004')).to eq('2004')
    end

    it 'handels a data with format DD/MM/YYYY' do
      expect(indexer.send(:normalize_date, '01/01/2004')).to eq('2004')
    end

    it 'handles nil' do
      expect(indexer.send(:normalize_date, nil)).to eq('')
    end

    it 'handles an empty string' do
      expect(indexer.send(:normalize_date, '')).to eq('')
    end
  end
end
