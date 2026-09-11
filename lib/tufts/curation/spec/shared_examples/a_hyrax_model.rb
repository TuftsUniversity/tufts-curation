# frozen_string_literal: true

shared_examples 'a model with hyrax 3 basic metadata' do |**opts|
  subject(:model) { described_class.new }
  let(:except)    { Array(opts[:except]) }

  it_behaves_like 'a model with hyrax core metadata', opts

  it do
    skip if except.include?(:label)
    is_expected
      .to have_editable_property(:label)
      .with_predicate('info:fedora/fedora-system:def/model#downloadFilename')
      .as_single_valued
  end

  it do
    skip if except.include?(:relative_path)
    is_expected
      .to have_editable_property(:relative_path)
      .with_predicate('http://scholarsphere.psu.edu/ns#relativePath')
      .as_single_valued
  end

  it do
    skip if except.include?(:import_url)
    is_expected
      .to have_editable_property(:import_url)
      .with_predicate('http://scholarsphere.psu.edu/ns#importUrl')
      .as_single_valued
  end

  it do
    skip if except.include?(:bibliographic_citation)
    is_expected.to have_editable_property(:bibliographic_citation, RDF::Vocab::DC.bibliographicCitation)
  end

  it do
    skip if except.include?(:contributor)
    is_expected.to have_editable_property(:contributor, RDF::Vocab::DC11.contributor)
  end

  it do
    skip if except.include?(:creator)
    is_expected.to have_editable_property(:creator, RDF::Vocab::DC11.creator)
  end

  it do
    skip if except.include?(:date_created)
    is_expected.to have_editable_property(:date_created, RDF::Vocab::DC.created)
  end

  it do
    skip if except.include?(:description)
    is_expected.to have_editable_property(:description, RDF::Vocab::DC11.description)
  end

  it do
    skip if except.include?(:identifier)
    is_expected.to have_editable_property(:identifier, RDF::Vocab::DC.identifier)
  end

  it do
    skip if except.include?(:keyword)
    is_expected.to have_editable_property(:keyword, RDF::Vocab::SCHEMA.keywords)
  end

  it do
    skip if except.include?(:language)
    is_expected.to have_editable_property(:language, RDF::Vocab::DC11.language)
  end

  it do
    skip if except.include?(:license)
    is_expected.to have_editable_property(:license, RDF::Vocab::DC.license)
  end

  it do
    skip if except.include?(:publisher)
    is_expected.to have_editable_property(:publisher, RDF::Vocab::DC11.publisher)
  end

  it do
    skip if except.include?(:related_url)
    is_expected.to have_editable_property(:related_url, RDF::RDFS.seeAlso)
  end

  it do
    skip if except.include?(:resource_type)
    is_expected.to have_editable_property(:resource_type, RDF::Vocab::DC.type)
  end

  it do
    skip if except.include?(:rights_statement)
    is_expected.to have_editable_property(:rights_statement, RDF::Vocab::EDM.rights)
  end

  it do
    skip if except.include?(:source)
    is_expected.to have_editable_property(:source, RDF::Vocab::DC.source)
  end

  it do
    skip if except.include?(:subject)
    is_expected.to have_editable_property(:subject, RDF::Vocab::DC11.subject)
  end

  describe '#based_near' do
    it 'builds as a location'
    it 'is controlled'
    it 'accepts nested attributes'
  end
end
