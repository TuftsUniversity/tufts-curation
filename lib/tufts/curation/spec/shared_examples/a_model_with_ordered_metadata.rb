shared_examples 'a model with ordered metadata' do
  it 'has ordered creators' do
    expect(work)
      .to have_editable_property(:ordered_creators)
      .with_predicate(Tufts::Vocab::Tufts.ordered_creators)
  end

  it 'has ordered descriptions' do
    expect(work)
      .to have_editable_property(:ordered_descriptions)
      .with_predicate(Tufts::Vocab::Tufts.ordered_descriptions)
  end
end
