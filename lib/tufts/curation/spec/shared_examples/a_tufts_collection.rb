shared_examples 'a tufts collection' do
  subject(:collection) { described_class.new }

  it_behaves_like 'a model with hyrax basic metadata'

  it 'has ead' do
    expect(collection)
      .to have_editable_property(:ead)
      .with_predicate(Tufts::Vocab::Tufts.has_description)
  end
end
