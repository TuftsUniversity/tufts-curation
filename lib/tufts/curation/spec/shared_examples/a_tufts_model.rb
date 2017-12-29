shared_examples 'a tufts model' do
  subject(:work) { described_class.new }

  it_behaves_like 'a model with admin metadata attributes'
  it_behaves_like 'a model with descriptive metadata attributes'
  it_behaves_like 'a model with ordered metadata'
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

  describe 'ordered fields' do
    describe '#creator' do
      let(:lancelot) { 'Sir Lancelot du Lac' }
      let(:gawain) { 'Sir Gawain' }
      let(:arthur) { 'King Arthur Pendragon' }
      let(:expected_order) { [arthur, gawain, lancelot] }

      it 'preserves the order' do
        expect { work.creator = expected_order }
          .to change { work.creator.to_a }
          .to eq expected_order
      end

      it 'updates attributes' do
        expect { work.creator = expected_order }
          .to change { work.changed_attributes }
          .to include(:creator, :ordered_creators)
      end

      context 'when reloaded' do
        subject(:work) do
          described_class.new(title: ['moomin'], creator: expected_order)
        end

        before { work.save! }

        it 'preserves the order' do
          expect { work.reload }
            .not_to change { work.creator.to_a }
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
        expect { work.description = expected_order }
          .to change { work.description.to_a }
          .to eq expected_order
      end

      it 'updates attributes' do
        expect { work.description = expected_order }
          .to change { work.changed_attributes }
          .to include(:description, :ordered_descriptions)
      end

      context 'when reloaded' do
        subject(:work) do
          described_class.new(title: ['moomin'], description: expected_order)
        end

        before { work.save! }

        it 'preserves the order' do
          expect { work.reload }
            .not_to change { work.description.to_a }
            .from eq expected_order
        end
      end
    end
  end
end
