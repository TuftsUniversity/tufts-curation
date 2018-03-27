shared_examples 'a model with descriptive metadata attributes' do
  it 'has geographic_names' do
    expect(work)
      .to have_editable_property(:geographic_name)
      .with_predicate(RDF::Vocab::DC.spatial)
  end

  it 'has geog_names' do
    expect(work)
      .to have_editable_property(:geog_name)
      .with_predicate(Tufts::Vocab::Tufts.geog_name)
  end

  it 'has held by' do
    expect(work)
      .to have_editable_property(:held_by)
      .with_predicate(RDF::Vocab::Bibframe.heldBy)
  end

  it 'has alternative title' do
    expect(work)
      .to have_editable_property(:alternative_title)
      .with_predicate(RDF::Vocab::DC.alternative)
  end

  it 'has abstract' do
    expect(work)
      .to have_editable_property(:abstract)
      .with_predicate(RDF::Vocab::DC.abstract)
  end

  it 'has table of contents' do
    expect(work)
      .to have_editable_property(:table_of_contents)
      .with_predicate(RDF::Vocab::DC.tableOfContents)
  end

  it 'has primary date' do
    expect(work)
      .to have_editable_property(:primary_date)
      .with_predicate(RDF::Vocab::DC11.date)
  end

  it 'has date accepted' do
    expect(work)
      .to have_editable_property(:date_accepted)
      .with_predicate(RDF::Vocab::DC.dateAccepted)
  end

  it 'has date available' do
    expect(work)
      .to have_editable_property(:date_available)
      .with_predicate(RDF::Vocab::DC.available)
  end

  it 'has date copyrighted' do
    expect(work)
      .to have_editable_property(:date_copyrighted)
      .with_predicate(RDF::Vocab::DC.dateCopyrighted)
  end

  it 'has date issued' do
    expect(work)
      .to have_editable_property(:date_issued)
      .with_predicate(RDF::Vocab::EBUCore.dateIssued)
  end

  it 'has rights_holder' do
    expect(work)
      .to have_editable_property(:rights_holder)
      .with_predicate(RDF::Vocab::DC.rightsHolder)
  end

  it 'has format label' do
    expect(work)
      .to have_editable_property(:format_label)
      .with_predicate(RDF::Vocab::PREMIS.hasFormatName)
  end

  it 'has replaces' do
    expect(work)
      .to have_editable_property(:replaces)
      .with_predicate(RDF::Vocab::DC.replaces)
  end

  it 'has is_replaced_by' do
    expect(work)
      .to have_editable_property(:is_replaced_by)
      .with_predicate(RDF::Vocab::DC.isReplacedBy)
  end

  it 'has has format' do
    expect(work)
      .to have_editable_property(:has_format)
      .with_predicate(RDF::Vocab::DC.hasFormat)
  end

  it 'has "is format of"' do
    expect(work)
      .to have_editable_property(:is_format_of)
      .with_predicate(RDF::Vocab::DC.isFormatOf)
  end

  it 'has "has part"' do
    expect(work)
      .to have_editable_property(:has_part)
      .with_predicate(RDF::Vocab::DC.hasPart)
  end

  it 'has extent' do
    expect(work)
      .to have_editable_property(:extent)
      .with_predicate(RDF::Vocab::DC.extent)
  end

  it 'has personal name' do
    expect(work)
      .to have_editable_property(:personal_name)
      .with_predicate(RDF::Vocab::MADS.PersonalName)
  end

  it 'has corporate name' do
    expect(work)
      .to have_editable_property(:corporate_name)
      .with_predicate(RDF::Vocab::MADS.CorporateName)
  end

  it 'has genre' do
    expect(work)
      .to have_editable_property(:genre)
      .with_predicate(RDF::Vocab::MADS.GenreForm)
  end

  it 'has provenance' do
    expect(work)
      .to have_editable_property(:provenance)
      .with_predicate(RDF::Vocab::DC.provenance)
  end

  it 'has temporal' do
    expect(work)
      .to have_editable_property(:temporal)
      .with_predicate(RDF::Vocab::DC.temporal)
  end

  it 'has funder' do
    expect(work)
      .to have_editable_property(:funder)
      .with_predicate(RDF::Vocab::MARCRelators.fnd)
  end

  it 'is part of' do
    expect(work)
      .to have_editable_property(:is_part_of)
      .with_predicate(RDF::Vocab::DC.isPartOf)
  end
end
