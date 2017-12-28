shared_examples 'a tufts model' do
  subject(:work) { described_class.new }

  it_behaves_like 'a model with admin metadata attributes'
  it_behaves_like 'a model with descriptive metadata attributes'
  it_behaves_like 'a model with hyrax basic metadata'

  describe '#title' do
    it 'validates presence' do
      expect { work.title = ['moomin'] }
        .to change { work.valid? }
        .from(false).to(true)
    end

    it 'validates cardinality (1)' do
      work.title = ['moomin']
      expect { work.title = ['moomin', 'moomin 2: the snork strikes back'] }
        .to change { work.valid? }
        .from(true).to(false)
    end
  end
end
