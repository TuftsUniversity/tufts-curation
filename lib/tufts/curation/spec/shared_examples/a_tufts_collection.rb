shared_examples 'a tufts collection' do
  subject(:collection) { described_class.new }

  it_behaves_like 'a model with hyrax basic metadata'

  it_behaves_like 'a model with ordered metadata' do
    let(:work) { collection }
  end

  it 'has call_number' do
    expect(collection)
      .to have_editable_property(:call_number)
  end

  it 'has finding_aid' do
    expect(collection)
      .to have_editable_property(:finding_aid)
  end

  describe 'ordered fields' do
    describe '#creator' do
      let(:lancelot) { 'Sir Lancelot du Lac' }
      let(:gawain) { 'Sir Gawain' }
      let(:arthur) { 'King Arthur Pendragon' }
      let(:expected_order) { [arthur, gawain, lancelot] }

      it 'preserves the order' do
        expect { collection.creator = expected_order }
          .to change { collection.creator.to_a }
          .to eq expected_order
      end

      it 'updates attributes' do
        expect { collection.creator = expected_order }
          .to change { collection.changed_attributes }
          .to include(:creator, :ordered_creators)
      end

      context 'when reloaded' do
        subject(:collection) do
          described_class.new(title: ['moomin'], creator: expected_order)
        end

        before { collection.save! }

        it 'preserves the order' do
          expect { collection.reload }
            .not_to change { collection.creator.to_a }
            .from eq expected_order
        end
      end
    end

    describe '#description' do
      let(:desc_a) { 'AAA' }
      let(:desc_b) { 'BBB' }
      let(:desc_c) { 'CCC' }
      let(:expected_order) { [desc_b, desc_a, desc_c] }

      it 'preserves the order' do
        expect { collection.description = expected_order }
          .to change { collection.description.to_a }
          .to eq expected_order
      end

      it 'updates attributes' do
        expect { collection.description = expected_order }
          .to change { collection.changed_attributes }
          .to include(:description, :ordered_descriptions)
      end

      context 'when reloaded' do
        subject(:collection) do
          described_class.new(title: ['moomin'], description: expected_order)
        end

        before { collection.save! }

        it 'preserves the order' do
          expect { collection.reload }
            .not_to change { collection.description.to_a }
            .from eq expected_order
        end
      end
    end
  end
end
