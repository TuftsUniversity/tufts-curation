shared_examples 'a model with a transcription' do
  let(:other_work) { ActiveFedora::Base.new }

  it 'has a transcript' do
    expect { work.transcript = other_work }
      .to change { work.transcript }
      .from(nil).to(other_work)
  end
end
