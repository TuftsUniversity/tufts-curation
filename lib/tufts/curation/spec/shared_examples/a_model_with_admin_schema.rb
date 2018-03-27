shared_examples 'a model with admin metadata attributes' do
  describe '#mark_reviewed!' do
    it 'sets #reviewed?' do
      expect { work.mark_reviewed! }
        .to change { work.reviewed? }
        .from(false)
        .to(true)
    end
  end

  describe '#reviewed?' do
    before { work.qr_status = ['qr status'] }

    it 'is true when qr_status is set to "Batch Reviewed"' do
      expect { work.qr_status << work.class::REVIEWED_STRING }
        .to change { work.reviewed? }
        .from(false)
        .to(true)
    end
  end

  it 'has steward' do
    expect(work)
      .to have_editable_property(:steward)
      .with_predicate(Tufts::Vocab::Tufts.steward)
  end

  it 'has downloadable' do
    expect(work)
      .to have_editable_property(:downloadable)
      .with_predicate(Tufts::Vocab::Tufts.downloadable)
  end

  it 'has internal_note' do
    expect(work)
      .to have_editable_property(:internal_note)
      .with_predicate(Tufts::Vocab::Tufts.internal_note)
  end

  it 'has audience' do
    expect(work)
      .to have_editable_property(:audience)
      .with_predicate(RDF::Vocab::DC.audience)
  end

  it 'has an end_date' do
    expect(work)
      .to have_editable_property(:end_date)
      .with_predicate(RDF::Vocab::PREMIS.hasEndDate)
  end

  it 'has a embargo_note' do
    expect(work)
      .to have_editable_property(:embargo_note)
      .with_predicate(RDF::Vocab::PREMIS.TermOfRestriction)
  end

  it 'has an accrual_policy' do
    expect(work)
      .to have_editable_property(:accrual_policy)
      .with_predicate(RDF::Vocab::DC.accrualPolicy)
  end

  it 'has rights_note' do
    expect(work)
      .to have_editable_property(:rights_note)
      .with_predicate(RDF::Vocab::DC11.rights)
  end

  it 'has legacy_pid' do
    expect(work)
      .to have_editable_property(:legacy_pid)
      .with_predicate(Tufts::Vocab::Tufts.legacy_pid)
  end

  it 'has retention_period' do
    expect(work)
      .to have_editable_property(:retention_period)
      .with_predicate(Tufts::Vocab::Tufts.retention_period)
  end

  it 'has admin_start_date' do
    expect(work)
      .to have_editable_property(:admin_start_date)
      .with_predicate(Tufts::Vocab::Tufts.startDate)
  end

  it 'has qr_status' do
    expect(work)
      .to have_editable_property(:qr_status)
      .with_predicate(Tufts::Vocab::Tufts.qr_status)
  end

  it 'has rejection_reason' do
    expect(work)
      .to have_editable_property(:rejection_reason)
      .with_predicate(Tufts::Vocab::Tufts.rejection_reason)
  end

  it 'has quality review note' do
    expect(work)
      .to have_editable_property(:qr_note)
      .with_predicate(Tufts::Vocab::Tufts.qr_note)
  end

  it 'has creator_department' do
    expect(work)
      .to have_editable_property(:creator_department)
      .with_predicate(Tufts::Vocab::Tufts.creator_department)
  end

  it 'has createdby' do
    expect(work)
      .to have_editable_property(:createdby)
      .with_predicate(Tufts::Vocab::Tufts.createdby)
  end

  it 'has a license field' do
    expect(work)
      .to have_editable_property(:tufts_license)
      .with_predicate(RDF::Vocab::DC.license)
  end
end
