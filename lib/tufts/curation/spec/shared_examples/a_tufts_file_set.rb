shared_examples 'a tufts file set' do
  subject(:file_set) { described_class.new }

  it 'is a saveable model' do
    expect { file_set.save }.not_to raise_error
  end
end
