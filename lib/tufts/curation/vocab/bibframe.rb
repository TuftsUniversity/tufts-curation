# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from http://id.loc.gov/ontologies/bibframe/
require 'rdf'
module RDF::Vocab
  # @!parse
  #   # Vocabulary for <http://id.loc.gov/ontologies/bibframe/>
  #   #
  #   # BIBFRAME vocabulary
  #   # @version 2.0.1
  #   class Bibframe < RDF::StrictVocabulary
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AbbreviatedTitle
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AccessPolicy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AcquisitionSource
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AdminMetadata
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Agent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Ansi
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AppliedMaterial
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Archival
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Arrangement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AspectRatio
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Audio
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AudioIssueNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AudioTake
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Barcode
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BaseMaterial
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BookFormat
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BroadcastStandard
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Capture
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Carrier
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Cartographic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CartographicDataType
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CartographicObjectType
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Cartography
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Chronology
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Classification
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ClassificationDdc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ClassificationLcc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ClassificationNlm
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ClassificationUdc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Coden
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Collection
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CollectiveTitle
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ColorContent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Content
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ContentAccessibility
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Contribution
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CopyrightNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CopyrightRegistration
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CoverArt
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Dataset
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DescriptionAuthentication
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DescriptionConventions
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DigitalCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Dissertation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DissertationIdentifier
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Distribution
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Doi
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Ean
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Electronic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Emulsion
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EncodedBitrate
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EncodingFormat
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Enumeration
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EnumerationAndChronology
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Event
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Extent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Family
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :FileSize
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :FileType
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Fingerprint
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :FontSize
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Frequency
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Generation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :GenerationProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :GenreForm
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :GeographicCoverage
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :GrooveCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Gtin14Number
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Hdl
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Identifier
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Illustration
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ImmediateAcquisition
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Instance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :IntendedAudience
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Isan
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Isbn
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Ismn
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Isni
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Iso
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Isrc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Issn
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :IssnL
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Issuance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Istc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Iswc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Item
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Jurisdiction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :KeyTitle
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Language
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Layout
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LcOverseasAcq
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Lccn
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Local
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Manufacture
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Manuscript
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MatrixNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Media
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Meeting
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MixedMaterial
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Mount
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MovementNotation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MovingImage
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Multimedia
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MusicDistributorNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MusicEnsemble
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MusicFormat
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MusicInstrument
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MusicMedium
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MusicNotation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MusicPlate
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MusicPublisherNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MusicVoice
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Nbn
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :NotatedMovement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :NotatedMusic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Notation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Note
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Object
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ObjectCount
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Organization
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ParallelTitle
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Person
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Place
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PlaybackChannels
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PlaybackCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PlayingSpeed
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Polarity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PostalRegistration
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PresentationFormat
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Print
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Production
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ProductionMethod
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Projection
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ProjectionCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ProjectionSpeed
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ProvisionActivity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Publication
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PublisherNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RecordingMedium
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RecordingMethod
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ReductionRatio
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RegionalEncoding
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ReportNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Resolution
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RetentionPolicy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Review
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Role
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Scale
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Script
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ShelfMark
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ShelfMarkDdc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ShelfMarkLcc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ShelfMarkNlm
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ShelfMarkUdc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Sici
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SoundCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SoundContent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Source
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Status
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :StillImage
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :StockNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Strn
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :StudyNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Sublocation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Summary
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SupplementaryContent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SystemRequirement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TableOfContents
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Tactile
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TactileNotation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TapeConfig
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Temporal
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Text
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Title
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Topic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TrackConfig
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Unit
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Upc
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Urn
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :UsageAndAccessPolicy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :UsePolicy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VariantTitle
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VideoCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VideoFormat
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VideoRecordingNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Work
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :absorbed
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :absorbedBy
  #
  #     # Expected value Work, Instance or Item
  #     #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :accompaniedBy
  #
  #     # Expected value Work, Instance or Item
  #     #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :accompanies
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :acquisitionSource
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :acquisitionTerms
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :adminMetadata
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :agent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :appliedMaterial
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :arrangement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ascensionAndDeclination
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :aspectRatio
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :assigner
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :awards
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :baseMaterial
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :bookFormat
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :capture
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :carrier
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :cartographicAttributes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :changeDate
  #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :classification
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :classificationPortion
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :code
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :colorContent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :content
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :contentAccessibility
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :continuedBy
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :continuedInPartBy
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :continues
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :continuesInPart
  #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :contribution
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :coordinates
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :copyrightDate
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :copyrightRegistration
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :count
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :coverArt
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :creationDate
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :credits
  #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :custodialHistory
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :dataSource
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :date
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :degree
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :derivativeOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :derivedFrom
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :descriptionAuthentication
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :descriptionConventions
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :descriptionLanguage
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :descriptionModifier
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :digitalCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :dimensions
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :dissertation
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :duration
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :edition
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :editionEnumeration
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :editionStatement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :electronicLocator
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :emulsion
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ensemble
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ensembleType
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :enumerationAndChronology
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :equinox
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :eventContent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :eventContentOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :exclusionGRing
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :expressionOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :extent
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :findingAid
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :findingAidOf
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :firstIssue
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :fontSize
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :frequency
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :generation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :generationDate
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :generationProcess
  #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :genreForm
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :geographicCoverage
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :grantingInstitution
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasDerivative
  #
  #     # Expected value Work, Instance or Item
  #     #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasEquivalent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasExpression
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasInstance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasItem
  #
  #     # Expected value Work, Instance or Item
  #     #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasPart
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasReproduction
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasSeries
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasSubseries
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :heldBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hierarchicalLevel
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :historyOfWork
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :identifiedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :identifies
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :illustrativeContent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :immediateAcquisition
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :index
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :indexOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :instanceOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :instrument
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :instrumentalType
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :intendedAudience
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :issuance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :issuedWith
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :itemOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :itemPortion
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :language
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :lastIssue
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :layout
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :legalDate
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :mainTitle
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :media
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :mergedToForm
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :mergerOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :mount
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :musicFormat
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :musicKey
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :musicMedium
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :musicOpusNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :musicSerialNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :musicThematicNumber
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :natureOfContent
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :notation
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :note
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :noteType
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :organization
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :originDate
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :originPlace
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :originalVersion
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :originalVersionOf
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :otherEdition
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :otherPhysicalFormat
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :outerGRing
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :part
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :partName
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :partNumber
  #
  #     # Expected value Work, Instance or Item
  #     #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :partOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :pattern
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :physicalLocation
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :place
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :polarity
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :precededBy
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :preferredCitation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :productionMethod
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :projection
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :projectionCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :provisionActivity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :provisionActivityStatement
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :qualifier
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :reductionRatio
  #
  #     # Expected value Work, Instance or Item
  #     #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :referencedBy
  #
  #     # Expected value Work, Instance or Item
  #     #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :references
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :relatedTo
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :replacedBy
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :replacementOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :reproductionOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :responsibilityStatement
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :review
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :role
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :scale
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :schedulePart
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :separatedFrom
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :seriesEnumeration
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :seriesOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :seriesStatement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :shelfMark
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :soundCharacteristic
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :soundContent
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :source
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :spanEnd
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :splitInto
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :status
  #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :subject
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :sublocation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :subseriesEnumeration
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :subseriesOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :subseriesStatement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :subtitle
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :succeededBy
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :summary
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :supplement
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :supplementTo
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :supplementaryContent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :systemRequirement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :table
  #
  #     # Used with Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :tableOfContents
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :tableSeq
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :temporalCoverage
  #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :title
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :translation
  #
  #     # Used with Work or Instance
  #     #
  #     # Expected value Work or Instance
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :translationOf
  #
  #     # Used with Unspecified
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :unit
  #
  #     # Used with Work, Instance or Item
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :usageAndAccessPolicy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :variantType
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :version
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :videoCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :voice
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :voiceType
  #
  #   end
  Bibframe = Class.new(RDF::StrictVocabulary("http://id.loc.gov/ontologies/bibframe/")) do

    # Ontology definition
    ontology :"http://id.loc.gov/ontologies/bibframe/",
      "dc:modified": "2020-03-06T16:54:50.319-05:00".freeze,
      label: "BIBFRAME vocabulary".freeze,
      "owl:ontologyIRI": "bibframe:".freeze,
      "owl:priorVersion": "http://id.loc.gov/ontologies/bibframe-2-0-0/".freeze,
      "owl:versionIRI": "http://id.loc.gov/ontologies/bibframe-2-0-1/".freeze,
      "owl:versionInfo": "2.0.1".freeze,
      type: "owl:Ontology".freeze

    # Class definitions
    term :AbbreviatedTitle,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Title as abbreviated for citation, indexing, and/or identification.".freeze,
      label: "Abbreviated title".freeze,
      subClassOf: "bibframe:VariantTitle".freeze,
      type: "owl:Class".freeze
    term :AccessPolicy,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Access restrictions and allowances regarding access to a resource, e.g., lending policy, access restrictions, embargos.".freeze,
      label: "Access policy".freeze,
      subClassOf: "bibframe:UsageAndAccessPolicy".freeze,
      type: "owl:Class".freeze
    term :AcquisitionSource,
      "dc:modified": "2017-02-06 (New)".freeze,
      definition: "Information about an organization, person, etc., from which a resource may be obtained.".freeze,
      label: "Acquisition source".freeze,
      type: "owl:Class".freeze
    term :AdminMetadata,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Metadata about the metadata, especially provenance information.".freeze,
      label: "Administrative metadata".freeze,
      type: "owl:Class".freeze
    term :Agent,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-05-13 (New subclass)".freeze],
      definition: "Entity having a role in a resource, such as a person or organization.".freeze,
      label: "Agent".freeze,
      subClassOf: "foaf:Agent".freeze,
      type: "owl:Class".freeze
    term :Ansi,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "American National Standards Institute identifier.".freeze,
      label: "ANSI number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :AppliedMaterial,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Physical or chemical substance applied to a base material of a resource.".freeze,
      label: "Applied material".freeze,
      type: "owl:Class".freeze
    term :Archival,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resources organically created, accumulated, and/or used by a person, family, or organization in the course of conduct of affairs and preserved because of their continuing value.".freeze,
      label: "Archival controlled".freeze,
      subClassOf: "bibframe:Instance".freeze,
      type: "owl:Class".freeze
    term :Arrangement,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about the organization and arrangement of a collection of items. For instance, for computer files, organization and arrangement information may be the file structure and sort sequence of a file; for visual materials, this information may be how a collection is arranged.".freeze,
      label: "Organization of materials information".freeze,
      type: "owl:Class".freeze
    term :AspectRatio,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Proportional relationship between an image's width and its height.".freeze,
      label: "Aspect ratio".freeze,
      type: "owl:Class".freeze
    term :Audio,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resources expressed in an audible form, including music or other sounds.".freeze,
      label: "Audio".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :AudioIssueNumber,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (Revised property name and definition)".freeze],
      definition: "Number assigned by publishers of sound recordings to identify the issue designation, or serial identification, of the resource.".freeze,
      label: "Audio issue number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :AudioTake,
      "dc:modified": "2017-02-03 (New)".freeze,
      definition: "Identifier assigned to the smallest identifiable unit of a recording session, e.g., a specific recording of an individual song.".freeze,
      label: "Audio recording take".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Barcode,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (Moved to Identifier class group from Item group)".freeze],
      definition: "Optical machine-readable representation of data relating to the item to which it is attached.".freeze,
      label: "Barcode".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :BaseMaterial,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Underlying physical material of a resource.".freeze,
      label: "Base material".freeze,
      type: "owl:Class".freeze
    term :BookFormat,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Result of folding a printed sheet to form a gathering of leaves.".freeze,
      label: "Book format".freeze,
      type: "owl:Class".freeze
    term :BroadcastStandard,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "System used to format a video resource for television broadcast, e.g., HDTV, PAL.".freeze,
      label: "Broadcast standard".freeze,
      subClassOf: "bibframe:VideoCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Capture,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about place and date associated with the capture (i.e., recording, filming, etc.) of the content of a resource.".freeze,
      label: "Capture of content".freeze,
      type: "owl:Class".freeze
    term :Carrier,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Categorization reflecting the format of the storage medium and housing of a carrier.".freeze,
      label: "Carrier type".freeze,
      type: "owl:Class".freeze
    term :Cartographic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Content that represents the whole or part of the earth, any celestial body, or imaginary place at any scale.".freeze,
      label: "Cartographic information".freeze,
      type: "owl:Class".freeze
    term :CartographicDataType,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Data type for encoding of geospatial information in a cartographic resource, e.g., raster, vector, point.".freeze,
      label: "Digital cartographic data type".freeze,
      subClassOf: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:Class".freeze
    term :CartographicObjectType,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Object type for encoding of geospatial information in a cartographic resource, e.g., point, line, polygon.".freeze,
      label: "Digital cartographic object type".freeze,
      subClassOf: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Cartography,
      "dc:modified": "2016-04-25 (fixed typo in definition)".freeze,
      definition: "Resource that shows spatial information, including maps, atlases, globes, digital, and other cartographic resources.".freeze,
      label: "Cartography".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :Chronology,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Dates associated with issues or items held.".freeze,
      label: "Chronology".freeze,
      subClassOf: "bibframe:EnumerationAndChronology".freeze,
      type: "owl:Class".freeze
    term :Classification,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "System of coding and organizing materials according to their subject.".freeze,
      label: "Classification entity".freeze,
      type: "owl:Class".freeze
    term :ClassificationDdc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Dewey Decimal Classification number used for subject access.".freeze,
      label: "DDC Classification".freeze,
      subClassOf: "bibframe:Classification".freeze,
      type: "owl:Class".freeze
    term :ClassificationLcc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Library of Congress Classification number used for subject access.".freeze,
      label: "LCC Classification".freeze,
      subClassOf: "bibframe:Classification".freeze,
      type: "owl:Class".freeze
    term :ClassificationNlm,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "National Library of Medicine Classification number used for subject access".freeze,
      label: "NLM classification".freeze,
      subClassOf: "bibframe:Classification".freeze,
      type: "owl:Class".freeze
    term :ClassificationUdc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Universal Decimal Classification number used for subject access.".freeze,
      label: "UDC Classification".freeze,
      subClassOf: "bibframe:Classification".freeze,
      type: "owl:Class".freeze
    term :Coden,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identifier for scientific and technical periodical titles assigned by the International CODEN Section of Chemical Abstracts Service.".freeze,
      label: "CODEN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Collection,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Aggregation of resources, generally gathered together artificially.".freeze,
      label: "Collection".freeze,
      type: "owl:Class".freeze
    term :CollectiveTitle,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Title for a compilation of resources.".freeze,
      label: "Collective title".freeze,
      subClassOf: "bibframe:VariantTitle".freeze,
      type: "owl:Class".freeze
    term :ColorContent,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Color characteristics of a resource, e.g., black and white, multicolored, etc.".freeze,
      label: "Color content".freeze,
      type: "owl:Class".freeze
    term :Content,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Categorization reflecting the fundamental form of communication in which the content is expressed and the human sense through which it is intended to be perceived.".freeze,
      label: "Content type".freeze,
      type: "owl:Class".freeze
    term :ContentAccessibility,
      "dc:modified": "2017-02-07 (New)".freeze,
      definition: "Information that assists those with a sensory impairment for greater understanding of content, e.g., captions.".freeze,
      label: "Content accessibility information".freeze,
      type: "owl:Class".freeze
    term :Contribution,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Agent and role with respect to the resource being described.".freeze,
      label: "Contribution".freeze,
      type: "owl:Class".freeze
    term :CopyrightNumber,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identifier assigned to a copyright registration or legal deposit.".freeze,
      label: "Copyright-legal deposit number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :CopyrightRegistration,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-05-04 (Class name corrected)".freeze],
      definition: "Copyright or Legal Deposit registration information".freeze,
      label: "Copyright registration".freeze,
      type: "owl:Class".freeze
    term :CoverArt,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Cover illustration of a resource.".freeze,
      label: "Cover art".freeze,
      type: "owl:Class".freeze
    term :Dataset,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Data encoded in a defined structure. Includes numeric data, environmental data,etc., used by applications software to calculate averages, correlations, etc., or to produce models, etc., but not normally displayed in its raw form.".freeze,
      label: "Dataset".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :DescriptionAuthentication,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (fixed class name)".freeze],
      definition: "Indication of specific types of reviews that have been carried out on the description information.".freeze,
      label: "Metadata authentication".freeze,
      subClassOf: "bibframe:AdminMetadata".freeze,
      type: "owl:Class".freeze
    term :DescriptionConventions,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-24 (fixed class name)".freeze],
      definition: "Rules used for the descriptive content of the resource description.".freeze,
      label: "Description conventions".freeze,
      subClassOf: "bibframe:AdminMetadata".freeze,
      type: "owl:Class".freeze
    term :DigitalCharacteristic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Technical specification relating to the digital encoding of text, image, audio, video, and other types of data in a resource.".freeze,
      label: "Digital characteristic".freeze,
      type: "owl:Class".freeze
    term :Dissertation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about a work presented as part of the formal requirements for an academic degree.".freeze,
      label: "Dissertation information".freeze,
      type: "owl:Class".freeze
    term :DissertationIdentifier,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identifier assigned to a thesis or dissertation for identification purposes .".freeze,
      label: "Dissertation Identifier".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Distribution,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information relating to distribution of a resource.".freeze,
      label: "Distributor".freeze,
      subClassOf: "bibframe:ProvisionActivity".freeze,
      type: "owl:Class".freeze
    term :Doi,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Digital Object Identifier.".freeze,
      label: "DOI".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Ean,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Article Identifier.".freeze,
      label: "EAN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Electronic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource that is intended for manipulation by a computer, accessed either directly or remotely.".freeze,
      label: "Electronic".freeze,
      subClassOf: "bibframe:Instance".freeze,
      type: "owl:Class".freeze
    term :Emulsion,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Suspension of light-sensitive chemicals used as a coating on a microfilm or microfiche, e.g., silver halide.".freeze,
      label: "Emulsion".freeze,
      type: "owl:Class".freeze
    term :EncodedBitrate,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Speed at which streaming audio, video, etc., is designed to play, e.g., 32 kbps.".freeze,
      label: "Encoded bitrate".freeze,
      subClassOf: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:Class".freeze
    term :EncodingFormat,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Schema, standard, etc., used to encode the digital content of a resource, e.g., MP3, XML, JPEG.".freeze,
      label: "Encoding format".freeze,
      subClassOf: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Enumeration,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Numbering or other enumeration associated with issues or items held.".freeze,
      label: "Enumeration".freeze,
      subClassOf: "bibframe:EnumerationAndChronology".freeze,
      type: "owl:Class".freeze
    term :EnumerationAndChronology,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Numbering or other enumeration and dates associated with issues or items held.".freeze,
      label: "Enumeration and chronology".freeze,
      type: "owl:Class".freeze
    term :Event,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Something that happens at a certain time and location, such as a performance, speech, or athletic event, that is documented by a resource.".freeze,
      label: "Event entity".freeze,
      type: "owl:Class".freeze
    term :Extent,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number and type of units and/or subunits making up a resource.".freeze,
      label: "Extent".freeze,
      type: "owl:Class".freeze
    term :Family,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Two or more persons related by birth, marriage, adoption, civil union, or similar legal status, or who otherwise present themselves as a family.".freeze,
      label: "Family".freeze,
      subClassOf: "bibframe:Agent".freeze,
      type: "owl:Class".freeze
    term :FileSize,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number of bytes in a digital file, e.g., 162 KB.".freeze,
      label: "File size".freeze,
      subClassOf: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:Class".freeze
    term :FileType,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "General type of data content encoded in a computer file, e.g., text file, audio file.".freeze,
      label: "File type".freeze,
      subClassOf: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Fingerprint,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identifier that is used to assist in the identification of antiquarian books by recording information comprising groups of characters taken from specified positions on specified pages of the book.".freeze,
      label: "Fingerprint identifier".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :FontSize,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Size of the type used to represent the characters and symbols in a resource.".freeze,
      label: "Font size".freeze,
      type: "owl:Class".freeze
    term :Frequency,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about intervals at which the parts of a serially produced resource or the updates to an integrating resource are issued.".freeze,
      label: "Frequency".freeze,
      type: "owl:Class".freeze
    term :Generation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Relationship between an original carrier and the carrier of a reproduction made from the original.".freeze,
      label: "Generation".freeze,
      type: "owl:Class".freeze
    term :GenerationProcess,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-24 (fixed class name)".freeze],
      definition: "Indication of the program or process used to generate the description by application of a particular transformation.".freeze,
      label: "Generation process".freeze,
      subClassOf: "bibframe:AdminMetadata".freeze,
      type: "owl:Class".freeze
    term :GenreForm,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Characteristics of works with similar plots, themes, settings, etc. (e.g., westerns, thrillers), or with a particular format of purpose (e.g., animation, short), or a combination (e.g., horror film where horror is the genre and film is the form).".freeze,
      label: "Genre/form".freeze,
      type: "owl:Class".freeze
    term :GeographicCoverage,
      "dc:modified": "2017-02-06 (New)".freeze,
      definition: "Geographic coverage of the content of the resource.".freeze,
      label: "Geographic coverage".freeze,
      type: "owl:Class".freeze
    term :GrooveCharacteristic,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-26 (fixed typo in definition)".freeze, "2017-02-03 (Fixed name of property)".freeze],
      definition: "Groove width of an analog disc or the groove pitch of an analog cylinder, e.g., coarse groove, microgroove".freeze,
      label: "Groove characteristic".freeze,
      subClassOf: "bibframe:SoundCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Gtin14Number,
      "dc:modified": "2017-02-03 (New)".freeze,
      definition: "14 digit number assigned to identify trade items as various packaging levels. GTIN-14 encompasses EAN/UCC-128 and ITF-14.".freeze,
      label: "Global Trade Item Number 14".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Hdl,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Unique and persistent identifier for digital objects developed by the Corporation for National Research Initiatives.".freeze,
      label: "Handle".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Identifier,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Token or name that is associated with a resource, such as a URI or an ISBN.".freeze,
      label: "Identifier".freeze,
      type: "owl:Class".freeze
    term :Illustration,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about content intended to illustrate a resource.".freeze,
      label: "Illustrative content".freeze,
      type: "owl:Class".freeze
    term :ImmediateAcquisition,
      "dc:modified": "2017-02-06 (New)".freeze,
      definition: "Information about the circumstances, e.g., source, date, method, under which the resource was directly acquired.".freeze,
      label: "Immediate acquisition".freeze,
      type: "owl:Class".freeze
    term :Instance,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource reflecting an individual, material embodiment of a Work.".freeze,
      label: "Instance".freeze,
      type: "owl:Class".freeze
    term :IntendedAudience,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information that identifies the specific intended or target audience or intellectual level for which the content described is considered appropriate. Also used to record interest and motivation levels and special learner characteristics.".freeze,
      label: "Intended audience information".freeze,
      type: "owl:Class".freeze
    term :Isan,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Standard Audiovisual Number.".freeze,
      label: "ISAN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Isbn,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Standard Book Number.".freeze,
      label: "ISBN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Ismn,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Standard Music Number.".freeze,
      label: "ISMN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Isni,
      "dc:modified": "2017-02-03 (New)".freeze,
      definition: "International Standard Name Identifier, a unique, persistent reference number for the identities of contributors to creative works.".freeze,
      label: "ISNI".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Iso,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Organization for Standardization standard number.".freeze,
      label: "ISO number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Isrc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Standard Recording Code.".freeze,
      label: "ISRC".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Issn,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Standard Serial Number.".freeze,
      label: "ISSN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :IssnL,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Standard Serial Number that links together various media versions of a continuing resource.".freeze,
      label: "ISSN-L".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Issuance,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about whether a resource is issued in one or more parts, the way it is updated, and its intended termination.".freeze,
      label: "Mode of issuance".freeze,
      type: "owl:Class".freeze
    term :Istc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Standard Text Code, a numbering system developed to enable the unique identification of textual works.".freeze,
      label: "ISTC".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Iswc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "International Standard Musical Work Code, a unique, persistent reference number for the identification of musical works.".freeze,
      label: "ISWC".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Item,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Single example of an Instance.".freeze,
      label: "Item".freeze,
      type: "owl:Class".freeze
    term :Jurisdiction,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Legal or political unit administering a geographic area.".freeze,
      label: "Jurisdiction".freeze,
      subClassOf: "bibframe:Agent".freeze,
      type: "owl:Class".freeze
    term :KeyTitle,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Unique title for a continuing resource that is assigned by the ISSN International Center in conjunction with an ISSN.".freeze,
      label: "Key title".freeze,
      subClassOf: "bibframe:VariantTitle".freeze,
      type: "owl:Class".freeze
    term :Language,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Language entity.".freeze,
      label: "Language entity".freeze,
      type: "owl:Class".freeze
    term :Layout,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Arrangement of text, images, tactile notation, etc., in a resource.".freeze,
      label: "Layout".freeze,
      type: "owl:Class".freeze
    term :LcOverseasAcq,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identification number assigned by the Library of Congress to works acquired through one of its collaborative overseas acquisition programs.".freeze,
      label: "LC acquisition program".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Lccn,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Library of Congress Control Number that identifies a resource description.".freeze,
      label: "LCCN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Local,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identifier established locally and not a standard number.".freeze,
      label: "Local identifier".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Manufacture,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information relating to manufacture of a resource.".freeze,
      label: "Manufacturer".freeze,
      subClassOf: "bibframe:ProvisionActivity".freeze,
      type: "owl:Class".freeze
    term :Manuscript,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource that is written in handwriting or typescript. These are generally unique resources.".freeze,
      label: "Manuscript".freeze,
      subClassOf: "bibframe:Instance".freeze,
      type: "owl:Class".freeze
    term :MatrixNumber,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (Revised definition)".freeze],
      definition: "Matrix identifier assigned to the master from which a specific sound recording was pressed.".freeze,
      label: "Audio matrix number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Media,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Categorization reflecting the general type of intermediation device required to view, play, run, etc., the content of a resource.".freeze,
      label: "Media type".freeze,
      type: "owl:Class".freeze
    term :Meeting,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Gathering of individuals or representatives of various bodies for the purpose of discussing and/or acting on topics of common interest.".freeze,
      label: "Meeting".freeze,
      subClassOf: "bibframe:Agent".freeze,
      type: "owl:Class".freeze
    term :MixedMaterial,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource comprised of multiple types which is not driven by software; for instance, a manuscript collection of text, photographs and sound recordings.".freeze,
      label: "Mixed material".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :Mount,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Physical material used for the support or backing to which the base material of a resource has been attached.".freeze,
      label: "Mount".freeze,
      type: "owl:Class".freeze
    term :MovementNotation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information on the symbol system used to convey the content of a movement resource.".freeze,
      label: "Movement notation used".freeze,
      subClassOf: "bibframe:Notation".freeze,
      type: "owl:Class".freeze
    term :MovingImage,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-26 (fixed typo in definition)".freeze],
      definition: "Images intended to be perceived as moving, including motion pictures (using liveaction and/or animation), video recordings of performances, events,etc.".freeze,
      label: "Moving image".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :Multimedia,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Electronic resource that is a computer program (i.e., digitally encoded instructions intended to be processed and performed by a computer) or which consists of multiple media types that are software driven, such as videogames.".freeze,
      label: "Software or multimedia".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :MusicDistributorNumber,
      "dc:modified": "2017-02-07 (New)".freeze,
      definition: "Identifier appearing on a resource assigned by a distributor to a specific audio recording, notated music publication, music-related publication, or videorecording.".freeze,
      label: "Music distributor number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :MusicEnsemble,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Ensemble for which a musical work is appropriate.".freeze,
      label: "Music ensemble".freeze,
      type: "owl:Class".freeze
    term :MusicFormat,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Layout for content of a resource that is presented in the form of musical notation.".freeze,
      label: "Notated music format".freeze,
      type: "owl:Class".freeze
    term :MusicInstrument,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Instrument for which a musical work is appropriate.".freeze,
      label: "Musical instrument".freeze,
      type: "owl:Class".freeze
    term :MusicMedium,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Summary statement of the medium for a musical work.".freeze,
      label: "Music medium information".freeze,
      type: "owl:Class".freeze
    term :MusicNotation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information on the symbol system used to convey the content of a music resource.".freeze,
      label: "Music notation used".freeze,
      subClassOf: "bibframe:Notation".freeze,
      type: "owl:Class".freeze
    term :MusicPlate,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (Revised definition)".freeze],
      definition: "Identifiers assigned by a music publisher or printer to the printing plates for the notated portion of a notated music publication, or an identifier that emulates the printing plate tradition in contemporary publications.".freeze,
      label: "Music plate number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :MusicPublisherNumber,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (Revised definition)".freeze],
      definition: "Identifier assigned to a notated music publication other than an issue, matrix, or plate number.".freeze,
      label: "Music publisher number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :MusicVoice,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Voice for which a musical work is appropriate.".freeze,
      label: "Music voice".freeze,
      type: "owl:Class".freeze
    term :Nbn,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "National Bibliography Number that identifies a resource description.".freeze,
      label: "NBN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :NotatedMovement,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Graphic, non-realized representations of movement intended to be perceived visually, e.g. dance.".freeze,
      label: "Notated movement".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :NotatedMusic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Graphic, non-realized representations of musical works intended to be perceived visually.".freeze,
      label: "Notated music".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :Notation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information on the alphabet, script, or symbol system used to convey the content of the resource, including specialized scripts, typefaces, tactile notation, movement notation, and musical notation.".freeze,
      label: "Notation".freeze,
      type: "owl:Class".freeze
    term :Note,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information, usually in textual form, on attributes of a resource or some aspect of a resource.".freeze,
      label: "Note".freeze,
      type: "owl:Class".freeze
    term :Object,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource in a form intended to be perceived visually in three-dimensions. Includes man-made objects such as models, sculptures, clothing, and toys, as well as naturally occurring objects such as specimens mounted for viewing.".freeze,
      label: "Three-dimensional object".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :ObjectCount,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number of objects in encoded geospatial information in a cartographic resource.".freeze,
      label: "Digital cartographic object count".freeze,
      subClassOf: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Organization,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Corporation or group of persons and/or organizations that acts, or may act, as a unit.".freeze,
      label: "Organization".freeze,
      subClassOf: "bibframe:Agent".freeze,
      type: "owl:Class".freeze
    term :ParallelTitle,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Title in another language and/or script.".freeze,
      label: "Parallel title proper".freeze,
      subClassOf: "bibframe:VariantTitle".freeze,
      type: "owl:Class".freeze
    term :Person,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Individual or identity established by an individual (either alone or in collaboration with one or more other individuals).".freeze,
      label: "Person".freeze,
      subClassOf: ["bibframe:Agent".freeze, "foaf:Person".freeze],
      type: "owl:Class".freeze
    term :Place,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Geographic location.".freeze,
      label: "Place".freeze,
      type: "owl:Class".freeze
    term :PlaybackChannels,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Configuration/number of sound channels used to make a recording, such as one channel for a monophonic recording, e.g., mono, stereo, quadraphonic, surround.".freeze,
      label: "Configuration of playback channels".freeze,
      subClassOf: "bibframe:SoundCharacteristic".freeze,
      type: "owl:Class".freeze
    term :PlaybackCharacteristic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Equalization system, noise reduction system, etc., used in making an audio recording, e.g., CCIR standard, CX encoded, Dolby.".freeze,
      label: "Special playback characteristics".freeze,
      subClassOf: "bibframe:SoundCharacteristic".freeze,
      type: "owl:Class".freeze
    term :PlayingSpeed,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Speed at which an audio carrier must be operated to produce the sound intended, e.g., 78 rpm, 19 cm/s.".freeze,
      label: "Playing speed".freeze,
      subClassOf: "bibframe:SoundCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Polarity,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Relationship of the colors and tones in an image to the colors and tones of the object reproduced.".freeze,
      label: "Polarity".freeze,
      type: "owl:Class".freeze
    term :PostalRegistration,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number assigned to a publication for which the specified postal service permits the use of a special mailing class privilege.".freeze,
      label: "Postal registration number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :PresentationFormat,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Format used in the production of a projected image, e.g., Cinerama, IMAX.".freeze,
      label: "Presentation format".freeze,
      subClassOf: "bibframe:ProjectionCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Print,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource that is printed.".freeze,
      label: "Printed".freeze,
      subClassOf: "bibframe:Instance".freeze,
      type: "owl:Class".freeze
    term :Production,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information relating to production of a resource.".freeze,
      label: "Producer".freeze,
      subClassOf: "bibframe:ProvisionActivity".freeze,
      type: "owl:Class".freeze
    term :ProductionMethod,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Process used to produce a resource".freeze,
      label: "Production method".freeze,
      type: "owl:Class".freeze
    term :Projection,
      "dc:modified": "2017-02-03 (New)".freeze,
      definition: "Method or system used to represent the surface of the earth or of a celestial sphere on a plane.".freeze,
      label: "Projection".freeze,
      type: "owl:Class".freeze
    term :ProjectionCharacteristic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Technical specification relating to the projection of a motion picture film.".freeze,
      label: "Projection characteristic".freeze,
      type: "owl:Class".freeze
    term :ProjectionSpeed,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Speed at which a projected carrier must be operated to produce the moving image intended, e.g., 20 fps.".freeze,
      label: "Projection speed".freeze,
      subClassOf: "bibframe:ProjectionCharacteristic".freeze,
      type: "owl:Class".freeze
    term :ProvisionActivity,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about the agent or place relating to the publication, printing, distribution, issue, release, or production of a resource.".freeze,
      label: "Provider entity".freeze,
      type: "owl:Class".freeze
    term :Publication,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information relating to publication of a resource.".freeze,
      label: "Publisher".freeze,
      subClassOf: "bibframe:ProvisionActivity".freeze,
      type: "owl:Class".freeze
    term :PublisherNumber,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number assigned by a publisher that is not one of the specific defined types.".freeze,
      label: "Publisher number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :RecordingMedium,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Type of medium used to record sound on an audio carrier, e.g., magnetic, optical.".freeze,
      label: "Recording medium".freeze,
      subClassOf: "bibframe:SoundCharacteristic".freeze,
      type: "owl:Class".freeze
    term :RecordingMethod,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Method used to encode audio content for playback, e.g., analog, digital.".freeze,
      label: "Type of recording".freeze,
      subClassOf: "bibframe:SoundCharacteristic".freeze,
      type: "owl:Class".freeze
    term :ReductionRatio,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Size of a micro-image in relation to the original from which it was produced.".freeze,
      label: "Reduction ratio".freeze,
      type: "owl:Class".freeze
    term :RegionalEncoding,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identification of the region of the world for which a videodisc has been encoded, e.g., region 4.".freeze,
      label: "Regional encoding".freeze,
      subClassOf: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:Class".freeze
    term :ReportNumber,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identification number of a technical report that is not a Standard Technical Report Number.".freeze,
      label: "Technical report number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Resolution,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Clarity or fineness of detail in a digital image, expressed by the measurement of the image in pixels, etc., e.g., 3.1 megapixels.".freeze,
      label: "Resolution".freeze,
      subClassOf: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:Class".freeze
    term :RetentionPolicy,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Policy of holding institution for retaining resource.".freeze,
      label: "Retention policy".freeze,
      subClassOf: "bibframe:UsageAndAccessPolicy".freeze,
      type: "owl:Class".freeze
    term :Review,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Review of a resource.".freeze,
      label: "Review".freeze,
      type: "owl:Class".freeze
    term :Role,
      "dc:modified": "2017-02-03 (New)".freeze,
      definition: "Function played or provided by a contributor, e.g., author, illustrator, etc.".freeze,
      label: "Role".freeze,
      type: "owl:Class".freeze
    term :Scale,
      "dc:modified": "2017-02-03 (New)".freeze,
      definition: "Ratio of the dimensions of a form contained or embodied in a resource to the dimensions of the entity it represents, e.g., for images or cartographic resources.".freeze,
      label: "Scale".freeze,
      type: "owl:Class".freeze
    term :Script,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information on the script, or symbol system used to convey the content of a text resource.".freeze,
      label: "Script used".freeze,
      subClassOf: "bibframe:Notation".freeze,
      type: "owl:Class".freeze
    term :ShelfMark,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Piece/item identifier, such as a call or other type of number.".freeze,
      label: "Shelf location".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :ShelfMarkDdc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Shelf mark based on Dewey Decimal Classification.".freeze,
      label: "DDC call number".freeze,
      subClassOf: "bibframe:ShelfMark".freeze,
      type: "owl:Class".freeze
    term :ShelfMarkLcc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Shelf mark based on Library of Congress Classification.".freeze,
      label: "LCC call number".freeze,
      subClassOf: "bibframe:ShelfMark".freeze,
      type: "owl:Class".freeze
    term :ShelfMarkNlm,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Shelf mark based on National Library of Medicine Classification.".freeze,
      label: "NLM call number".freeze,
      subClassOf: "bibframe:ShelfMark".freeze,
      type: "owl:Class".freeze
    term :ShelfMarkUdc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Shelf mark based on Universal Decimal Classification.".freeze,
      label: "UDC call number".freeze,
      subClassOf: "bibframe:ShelfMark".freeze,
      type: "owl:Class".freeze
    term :Sici,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Serial Item and Contribution Identifier.".freeze,
      label: "SICI".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :SoundCharacteristic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Technical specification relating to the encoding of sound in a resource.".freeze,
      label: "Sound characteristic".freeze,
      type: "owl:Class".freeze
    term :SoundContent,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Indication of whether the production of sound is an integral part of the resource.".freeze,
      label: "Sound content".freeze,
      type: "owl:Class".freeze
    term :Source,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource from which value or label came or was derived.".freeze,
      label: "Source".freeze,
      type: "owl:Class".freeze
    term :Status,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Designation of the validity or position of something, e.g., whether something is incorrect or available.".freeze,
      label: "Status".freeze,
      type: "owl:Class".freeze
    term :StillImage,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource expressed through line, shape, shading, etc., intended to be perceived visually as a still image or images in two dimensions. Includes two-dimensional images and slides and transparencies.".freeze,
      label: "Still image".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :StockNumber,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identification number used for stock purposes and assigned by agencies such as distributors, publishers, or vendors.".freeze,
      label: "Stock number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Strn,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Standard Technical Report Number.".freeze,
      label: "STRN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :StudyNumber,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Identification number for a computer data file.".freeze,
      label: "Study number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Sublocation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Specific place within the holding entity where the item is located or made available.".freeze,
      label: "Sublocation".freeze,
      type: "owl:Class".freeze
    term :Summary,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Description of the content of a resource, such as an abstract, summary, etc..".freeze,
      label: "Summary".freeze,
      type: "owl:Class".freeze
    term :SupplementaryContent,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Index, bibliography, appendix, etc. intended to supplement the primary content of a resource.".freeze,
      label: "Supplementary material".freeze,
      type: "owl:Class".freeze
    term :SystemRequirement,
      "dc:modified": "2017-02-06 (New)".freeze,
      definition: "Equipment or system requirements beyond what is normal and obvious for the type of carrier or type of file, such as make and model of equipment or hardware, operating system, amount of memory, programming language, other necessary software, any plug-ins or peripherals required to play, view, or run the resource, etc.".freeze,
      label: "System Requirement".freeze,
      type: "owl:Class".freeze
    term :TableOfContents,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Table of contents of a resource.".freeze,
      label: "Table of contents".freeze,
      type: "owl:Class".freeze
    term :Tactile,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource that is intended to be perceived by touch.".freeze,
      label: "Tactile material".freeze,
      subClassOf: "bibframe:Instance".freeze,
      type: "owl:Class".freeze
    term :TactileNotation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information on the symbol system used to convey the content of a tactile resource.".freeze,
      label: "Tactile notation used".freeze,
      subClassOf: "bibframe:Notation".freeze,
      type: "owl:Class".freeze
    term :TapeConfig,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number of tracks on an audiotape, e.g., 12 track.".freeze,
      label: "Tape configuration".freeze,
      subClassOf: "bibframe:SoundCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Temporal,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Chronological period.".freeze,
      label: "Temporal concept".freeze,
      type: "owl:Class".freeze
    term :Text,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource intended to be perceived visually and understood through the use of language in written or spoken form.".freeze,
      label: "Text".freeze,
      subClassOf: "bibframe:Work".freeze,
      type: "owl:Class".freeze
    term :Title,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (Definition changed)".freeze],
      definition: "Title information relating to a resource: work title, preferred title, instance title, transcribed title, translated title, variant form of title, etc.".freeze,
      label: "Title entity".freeze,
      type: "owl:Class".freeze
    term :Topic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Concept or area of knowledge.".freeze,
      label: "Topic".freeze,
      type: "owl:Class".freeze
    term :TrackConfig,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Configuration of the audio track on a sound-track film, e.g., center track, edge track.".freeze,
      label: "Track configuration".freeze,
      subClassOf: "bibframe:SoundCharacteristic".freeze,
      type: "owl:Class".freeze
    term :Unit,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Units in which a value is expressed.".freeze,
      label: "Unit".freeze,
      type: "owl:Class".freeze
    term :Upc,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Universal Product Code.".freeze,
      label: "UPC".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Urn,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Uniform Resource Number.".freeze,
      label: "URN".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :UsageAndAccessPolicy,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "General statement of allowances and restrictions on access to a resource, including retention, reproduction, access, and lending.".freeze,
      label: "Use and access conditions".freeze,
      type: "owl:Class".freeze
    term :UsePolicy,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Usage limitations placed on a resource with respect to reproduction, publication, exhibition, etc..".freeze,
      label: "Use policy".freeze,
      subClassOf: "bibframe:UsageAndAccessPolicy".freeze,
      type: "owl:Class".freeze
    term :VariantTitle,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Title associated with the resource that is different from the Work or Instance title.".freeze,
      label: "Title variation".freeze,
      subClassOf: "bibframe:Title".freeze,
      type: "owl:Class".freeze
    term :VideoCharacteristic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Technical specification relating to the encoding of video images in a resource.".freeze,
      label: "Video characteristic".freeze,
      type: "owl:Class".freeze
    term :VideoFormat,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Standard, etc., used to encode the analog video content of a resource, e.g., Beta, 8mm.".freeze,
      label: "Video format".freeze,
      subClassOf: "bibframe:VideoCharacteristic".freeze,
      type: "owl:Class".freeze
    term :VideoRecordingNumber,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (Corrected case in class name)".freeze],
      definition: "Number assigned by a publisher to a video recording.".freeze,
      label: "Video recording number".freeze,
      subClassOf: "bibframe:Identifier".freeze,
      type: "owl:Class".freeze
    term :Work,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource reflecting a conceptual essence of a cataloging resource.".freeze,
      label: "Work".freeze,
      type: "owl:Class".freeze

    # Property definitions
    property :absorbed,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource that has been incorporated into another resource.".freeze,
      inverseOf: "bibframe:absorbedBy".freeze,
      label: "Absorption of".freeze,
      subPropertyOf: "bibframe:precededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :absorbedBy,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource that incorporates another resource.".freeze,
      inverseOf: "bibframe:absorbed".freeze,
      label: "Absorbed by".freeze,
      subPropertyOf: "bibframe:succeededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :accompaniedBy,
      comment: ["Expected value Work, Instance or Item".freeze, "Used with Work, Instance or Item".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that accompanies the described resource.".freeze,
      inverseOf: "bibframe:accompanies".freeze,
      label: "Accompanied by".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :accompanies,
      comment: ["Expected value Work, Instance or Item".freeze, "Used with Work, Instance or Item".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that adds to or is issued with the described resource.".freeze,
      inverseOf: "bibframe:accompaniedBy".freeze,
      label: "Accompanies".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :acquisitionSource,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-06 (Changed from data to object property".freeze, "slight change to definition)".freeze],
      definition: "Information about an organization, person, etc., from which a resource may be obtained.".freeze,
      label: "Source of acquisition".freeze,
      range: "bibframe:AcquisitionSource".freeze,
      type: "owl:ObjectProperty".freeze
    property :acquisitionTerms,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Conditions under which the publisher, distributor, etc., will normally supply a resource, e.g., price of a resource.".freeze,
      label: "Terms of acquisition".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :adminMetadata,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Metadata about the metadata, especially provenance information.".freeze,
      label: "Administrative metadata".freeze,
      range: "bibframe:AdminMetadata".freeze,
      type: "owl:ObjectProperty".freeze
    property :agent,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Entity associated with a resource or element of description, such as the name of the entity responsible for the content or of the publication, printing, distribution, issue, release or production of a resource.".freeze,
      label: "Associated agent".freeze,
      range: "bibframe:Agent".freeze,
      type: "owl:ObjectProperty".freeze
    property :appliedMaterial,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Physical or chemical substance applied to a base material of a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Applied material".freeze,
      range: "bibframe:AppliedMaterial".freeze,
      type: "owl:ObjectProperty".freeze
    property :arrangement,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about the organization and arrangement of a collection of resources.".freeze,
      label: "Organization and arrangement".freeze,
      range: "bibframe:Arrangement".freeze,
      type: "owl:ObjectProperty".freeze
    property :ascensionAndDeclination,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "System for identifying the location of a celestial object in the sky covered by the cartographic content of a resource using the angles of right ascension and declination.".freeze,
      domain: "bibframe:Cartographic".freeze,
      label: "Cartographic ascension and declination".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :aspectRatio,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Proportional relationship between an image's width and its height.".freeze,
      label: "Aspect ratio".freeze,
      range: "bibframe:AspectRatio".freeze,
      type: "owl:ObjectProperty".freeze
    property :assigner,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Entity that assigned the metadata, such as the entity that assigned a classification number, entity that assigned a name, entity that assigned an identifier.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Assigner".freeze,
      range: "bibframe:Agent".freeze,
      type: "owl:ObjectProperty".freeze
    property :awards,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information on awards associated with the described resource.".freeze,
      label: "Award note".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :baseMaterial,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Underlying physical material of a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Base material".freeze,
      range: "bibframe:BaseMaterial".freeze,
      type: "owl:ObjectProperty".freeze
    property :bookFormat,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Result of folding a printed sheet to form a gathering of leaves.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Book format".freeze,
      range: "bibframe:BookFormat".freeze,
      type: "owl:ObjectProperty".freeze
    property :capture,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about place and date associated with the capture (e.g., recording, filming) of the content of a resource.".freeze,
      label: "Capture of content".freeze,
      range: "bibframe:Capture".freeze,
      type: "owl:ObjectProperty".freeze
    property :carrier,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Categorization reflecting the format of the storage medium and housing of a carrier.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Carrier type".freeze,
      range: "bibframe:Carrier".freeze,
      type: "owl:ObjectProperty".freeze
    property :cartographicAttributes,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Cartographic data that identifies characteristics of the resource, such as coordinates, projection, etc.".freeze,
      label: "Cartographic data".freeze,
      range: "bibframe:Cartographic".freeze,
      type: "owl:ObjectProperty".freeze
    property :changeDate,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Date or date and time on which the metadata was modified.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Description change date".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibframe:date".freeze,
      type: "owl:DatatypeProperty".freeze
    property :classification,
      comment: "Used with Work, Instance or Item".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Classification number in any scheme.".freeze,
      label: "Classification".freeze,
      range: "bibframe:Classification".freeze,
      type: "owl:ObjectProperty".freeze
    property :classificationPortion,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Classification number (single class number or beginning number of a span) that indicates the subject by applying a formal system of coding and organizing resources.".freeze,
      domain: "bibframe:Classification".freeze,
      label: "Classification number".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :code,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "String of characters that serves as a code representing information.".freeze,
      label: "Code".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :colorContent,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Color characteristics, e.g., black and white, multicolored.".freeze,
      label: "Color content".freeze,
      range: "bibframe:ColorContent".freeze,
      type: "owl:ObjectProperty".freeze
    property :content,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Categorization reflecting the fundamental form of communication in which the content is expressed and the human sense through which it is intended to be perceived.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Content type".freeze,
      range: "bibframe:Content".freeze,
      type: "owl:ObjectProperty".freeze
    property :contentAccessibility,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (changed from data to object property)".freeze, "2017-03-15 fixed typo in range".freeze],
      definition: "Information that assists those with a sensory impairment for greater understanding of content, e.g., captions.".freeze,
      label: "Content accessibility information".freeze,
      range: "bibframe:ContentAccessibility".freeze,
      type: "owl:ObjectProperty".freeze
    property :continuedBy,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource whose content continues an earlier resource under a new title.".freeze,
      inverseOf: "bibframe:continues".freeze,
      label: "Continued by".freeze,
      subPropertyOf: "bibframe:succeededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :continuedInPartBy,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource part of whose content separated from an earlier resource to form a new resource.".freeze,
      inverseOf: "bibframe:separatedFrom".freeze,
      label: "Continued in part by".freeze,
      subPropertyOf: "bibframe:succeededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :continues,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource that is continued by the content of a later resource under a new title.".freeze,
      inverseOf: "bibframe:continuedBy".freeze,
      label: "Continuation of".freeze,
      subPropertyOf: "bibframe:precededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :continuesInPart,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource that split into two or more separate resources with new titles.".freeze,
      inverseOf: "bibframe:splitInto".freeze,
      label: "Continuation in part of".freeze,
      subPropertyOf: "bibframe:precededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :contribution,
      comment: "Used with Work, Instance or Item".freeze,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (Corrected label)".freeze],
      definition: "Agent and its role in relation to the resource.".freeze,
      label: "Contributor and role".freeze,
      range: "bibframe:Contribution".freeze,
      type: "owl:ObjectProperty".freeze
    property :coordinates,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Mathematical system for identifying the area covered by the cartographic content of a resource, expressed either by means of longitude and latitude on the surface of planets or by the angles of right ascension and declination for celestial cartographic content.".freeze,
      domain: "bibframe:Cartographic".freeze,
      label: "Cartographic coordinates".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :copyrightDate,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Date associated with a claim of protection under copyright or a similar regime.".freeze,
      label: "Copyright date".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibframe:date".freeze,
      type: "owl:DatatypeProperty".freeze
    property :copyrightRegistration,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-05-04 (Corrected expected value)".freeze],
      definition: "Copyright and Legal Deposit registration information".freeze,
      label: "Copyright registration information".freeze,
      range: "bibframe:CopyrightRegistration".freeze,
      type: "owl:ObjectProperty".freeze
    property :count,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number associated with a measure of units, such as the number of units and/or subunits making up a resource.".freeze,
      label: "Number of units".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :coverArt,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Cover art image of a resource.".freeze,
      label: "Cover art".freeze,
      range: "bibframe:CoverArt".freeze,
      type: "owl:ObjectProperty".freeze
    property :creationDate,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Date or date and time on which the original metadata first created.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Description creation date".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibframe:date".freeze,
      type: "owl:DatatypeProperty".freeze
    property :credits,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information in note form of credits for persons or organizations who have participated in the creation and/or production of the resource.".freeze,
      label: "Credits note".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :custodialHistory,
      comment: "Used with Work, Instance or Item".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about the provenance, such as origin, ownership and custodial history (chain of custody), of a resource.".freeze,
      label: "Custodial history".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :dataSource,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (updated range)".freeze],
      definition: "Resource that is a data source to which the described resource is related. It may contain information about other files, printed sources, or collection procedures.".freeze,
      label: "Data source".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :date,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Date designation associated with a resource or element of description, such as date of title variation; year a degree was awarded; date associated with the publication, printing, distribution, issue, release or production of a resource. May be date typed.".freeze,
      label: "Date".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :degree,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Degree for which author was a candidate.".freeze,
      domain: "bibframe:Dissertation".freeze,
      label: "Degree".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :derivativeOf,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Source work from which the described resource is derived.".freeze,
      inverseOf: "bibframe:hasDerivative".freeze,
      label: "Is derivative of".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :derivedFrom,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Link to the metadata that was the source of the data.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Source metadata".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :descriptionAuthentication,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Indication of specific types of reviews that have been carried out on the description information.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Description authentication".freeze,
      range: "bibframe:DescriptionAuthentication".freeze,
      type: "owl:ObjectProperty".freeze
    property :descriptionConventions,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-24 (fixed domain name)".freeze],
      definition: "Rules used for the descriptive content of the resource description.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Description conventions".freeze,
      range: "bibframe:DescriptionConventions".freeze,
      type: "owl:ObjectProperty".freeze
    property :descriptionLanguage,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Language used for the metadata.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Description language".freeze,
      range: "bibframe:Language".freeze,
      type: "owl:ObjectProperty".freeze
    property :descriptionModifier,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Agency that modified a description.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Description modifier".freeze,
      range: "bibframe:Agent".freeze,
      type: "owl:ObjectProperty".freeze
    property :digitalCharacteristic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Technical specification relating to the digital encoding of text, image, audio, video, and other types of data in a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Digital characteristic".freeze,
      range: "bibframe:DigitalCharacteristic".freeze,
      type: "owl:ObjectProperty".freeze
    property :dimensions,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Measurements of the carrier or carriers and/or the container of a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Dimensions".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :dissertation,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Work presented as part of the formal requirements for an academic degree.".freeze,
      label: "Dissertation Information".freeze,
      range: "bibframe:Dissertation".freeze,
      type: "owl:ObjectProperty".freeze
    property :duration,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about the playing time, running time, etc. of a resource.".freeze,
      label: "Duration".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :edition,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Edition of the classification scheme, such as full, abridged or a number, when a classification scheme designates editions.".freeze,
      domain: "bibframe:Classification".freeze,
      label: "Classification scheme edition".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :editionEnumeration,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Enumeration of the edition; usually transcribed.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Edition enumeration".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :editionStatement,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information identifying the edition or version of the resource and associated statements of responsibility for the edition; usually transcribed.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Edition statement".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :electronicLocator,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Electronic location from which the resource is available.".freeze,
      domain: "bibframe:Item".freeze,
      label: "Electronic location".freeze,
      type: "owl:ObjectProperty".freeze
    property :emulsion,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Suspension of light-sensitive chemicals used as a coating on a microfilm or microfiche, e.g., silver halide.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Emulsion".freeze,
      range: "bibframe:Emulsion".freeze,
      type: "owl:ObjectProperty".freeze
    property :ensemble,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Ensemble for which a musical work is appropriate.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Ensemble".freeze,
      range: "bibframe:MusicEnsemble".freeze,
      type: "owl:ObjectProperty".freeze
    property :ensembleType,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Specific type of ensemble, such as orchestra, band, guitar ensemble.".freeze,
      domain: "bibframe:MusicEnsemble".freeze,
      label: "Ensemble type".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :enumerationAndChronology,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Numbering and dates of issues or items held.".freeze,
      domain: "bibframe:Item".freeze,
      label: "Numbering or other enumeration and dates associated with issues or items held.".freeze,
      range: "bibframe:EnumerationAndChronology".freeze,
      type: "owl:ObjectProperty".freeze
    property :equinox,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "One of two points of intersection of the ecliptic and the celestial equator, occupied by the sun when its declination is 0 degrees.".freeze,
      domain: "bibframe:Cartographic".freeze,
      label: "Cartographic equinox".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :eventContent,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Work whose content is the described event.".freeze,
      domain: "bibframe:Event".freeze,
      inverseOf: "bibframe:eventContentOf".freeze,
      label: "Event content".freeze,
      range: "bibframe:Work".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :eventContentOf,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Event that is the content of the described work.".freeze,
      domain: "bibframe:Work".freeze,
      inverseOf: "bibframe:eventContent".freeze,
      label: "Has event content".freeze,
      range: "bibframe:Event".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :exclusionGRing,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Coordinate pairs that identify the closed non-intersecting boundary of the area contained within the G-polygon outer ring that is excluded.".freeze,
      domain: "bibframe:Cartographic".freeze,
      label: "Cartographic G ring area excluded".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :expressionOf,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Work that the described Work is an expression of. For use to connect Works under FRBR/RDA rules.".freeze,
      domain: "bibframe:Work".freeze,
      inverseOf: "bibframe:hasExpression".freeze,
      label: "Expression of".freeze,
      range: "bibframe:Work".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :extent,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number and type of units and/or subunits making up a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Extent".freeze,
      range: "bibframe:Extent".freeze,
      type: "owl:ObjectProperty".freeze
    property :findingAid,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Relationship for archival, visual, and manuscript resources to a finding aid or similar control materials.".freeze,
      inverseOf: "bibframe:findingAidOf".freeze,
      label: "Finding aid".freeze,
      subPropertyOf: "bibframe:accompaniedBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :findingAidOf,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Finding aid or similar control materials for archival, visual, and manuscript resources.".freeze,
      inverseOf: "bibframe:findingAid".freeze,
      label: "Finding aid for".freeze,
      subPropertyOf: "bibframe:accompanies".freeze,
      type: "owl:ObjectProperty".freeze
    property :firstIssue,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Beginning date of a resource and/or the sequential designations.".freeze,
      label: "Multipart first issue".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :fontSize,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Size of the type used to represent the characters and symbols in a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Font size".freeze,
      range: "bibframe:FontSize".freeze,
      type: "owl:ObjectProperty".freeze
    property :frequency,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Intervals at which the parts of a serially produced resource or the updates to an integrating resource are issued.".freeze,
      label: "Frequency".freeze,
      range: "bibframe:Frequency".freeze,
      type: "owl:ObjectProperty".freeze
    property :generation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Relationship between an original carrier and the carrier of a reproduction made from the original.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Generation".freeze,
      range: "bibframe:Generation".freeze,
      type: "owl:ObjectProperty".freeze
    property :generationDate,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Date of conversion of the metadata from another format.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Date generated".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibframe:date".freeze,
      type: "owl:DatatypeProperty".freeze
    property :generationProcess,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Indication of the program or process used to generate the description by application of a particular transformation.".freeze,
      domain: "bibframe:AdminMetadata".freeze,
      label: "Description generation".freeze,
      range: "bibframe:GenerationProcess".freeze,
      type: "owl:ObjectProperty".freeze
    property :genreForm,
      comment: "Used with Work, Instance or Item".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Form category or genre to which a resource belongs".freeze,
      label: "Genre/form".freeze,
      range: "bibframe:GenreForm".freeze,
      type: "owl:ObjectProperty".freeze
    property :geographicCoverage,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-06 (Changed from data to object property)".freeze],
      definition: "Geographic coverage of the content of the resource.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Geographic coverage".freeze,
      range: "bibframe:GeographicCoverage".freeze,
      type: "owl:ObjectProperty".freeze
    property :grantingInstitution,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Name of degree granting institution.".freeze,
      domain: "bibframe:Dissertation".freeze,
      label: "Degree issuing institution".freeze,
      range: "bibframe:Agent".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasDerivative,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that is a modification of the described work.".freeze,
      inverseOf: "bibframe:derivativeOf".freeze,
      label: "Has derivative".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasEquivalent,
      comment: ["Expected value Work, Instance or Item".freeze, "Used with Work, Instance or Item".freeze],
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource embodies the same content as the described resource.".freeze,
      label: "Equivalence".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:SymmetricProperty".freeze
    property :hasExpression,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Work that is an expression of a described Work. For use to relate Works under FRBR/RDA rules.".freeze,
      domain: "bibframe:Work".freeze,
      inverseOf: "bibframe:expressionOf".freeze,
      label: "Expressed as".freeze,
      range: "bibframe:Work".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasInstance,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Instance is related to described Work. For use to connect Works to Instances in the BIBFRAME structure.".freeze,
      domain: "bibframe:Work".freeze,
      inverseOf: "bibframe:instanceOf".freeze,
      label: "Instance of Work".freeze,
      range: "bibframe:Instance".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasItem,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze, "2017-02-07 (slight revision of definition)".freeze],
      definition: "Item which is an example of the described Instance.".freeze,
      domain: "bibframe:Instance".freeze,
      inverseOf: "bibframe:itemOf".freeze,
      label: "Has holding".freeze,
      range: "bibframe:Item".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasPart,
      comment: ["Expected value Work, Instance or Item".freeze, "Used with Work, Instance or Item".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that is included either physically or logically in the described resource".freeze,
      inverseOf: "bibframe:partOf".freeze,
      label: "Has part".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasReproduction,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that reproduces another Resource.".freeze,
      domain: "bibframe:Instance".freeze,
      inverseOf: "bibframe:reproductionOf".freeze,
      label: "Reproduced as".freeze,
      range: "bibframe:Instance".freeze,
      subPropertyOf: "bibframe:hasEquivalent".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasSeries,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource in which the part has been issued; the title of the larger resource appears on the part.".freeze,
      inverseOf: "bibframe:seriesOf".freeze,
      label: "In series".freeze,
      subPropertyOf: "bibframe:partOf".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasSubseries,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "series resource that is part of another series.".freeze,
      inverseOf: "bibframe:subseriesOf".freeze,
      label: "Subseries".freeze,
      subPropertyOf: "bibframe:partOf".freeze,
      type: "owl:ObjectProperty".freeze
    property :heldBy,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Entity holding the item or from which it is available.".freeze,
      domain: "bibframe:Item".freeze,
      label: "Held by".freeze,
      range: "bibframe:Agent".freeze,
      type: "owl:ObjectProperty".freeze
    property :hierarchicalLevel,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Hierarchical position of the described materials relative to other material from the same source.".freeze,
      domain: "bibframe:Arrangement".freeze,
      label: "Hierarchical level of material".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :historyOfWork,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about the history of a Work.".freeze,
      domain: "bibframe:Work".freeze,
      label: "History of the work".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :identifiedBy,
      comment: "Used with Unspecified".freeze,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-05-04 (New inverse)".freeze],
      definition: "Character string associated with a resource that serves to differentiate that resource from other resources, i.e., that uniquely identifies an entity.".freeze,
      inverseOf: "bibframe:identifies".freeze,
      label: "Identifier".freeze,
      range: "bibframe:Identifier".freeze,
      type: "owl:ObjectProperty".freeze
    property :identifies,
      "dc:modified": "2017-02-03 (New inverse)".freeze,
      definition: "Resource that is associated with a character string that serves to differentiate one resource from another.".freeze,
      domain: "bibframe:Identifier".freeze,
      inverseOf: "bibframe:identifiedBy".freeze,
      label: "Resource identified".freeze,
      type: "owl:ObjectProperty".freeze
    property :illustrativeContent,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information about content intended to illustrate a resource.".freeze,
      label: "Illustrative content information".freeze,
      range: "bibframe:Illustration".freeze,
      type: "owl:ObjectProperty".freeze
    property :immediateAcquisition,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-06 (Changed from data to object property)".freeze],
      definition: "Information about the circumstances, e.g., source, date, method, under which the resource was directly acquired.".freeze,
      domain: "bibframe:Item".freeze,
      label: "Immediate acquisition".freeze,
      range: "bibframe:ImmediateAcquisition".freeze,
      type: "owl:ObjectProperty".freeze
    property :index,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze, "2017-02-03 (corrected label)".freeze],
      definition: "Resource has an accompanying index".freeze,
      inverseOf: "bibframe:indexOf".freeze,
      label: "Has index".freeze,
      subPropertyOf: "bibframe:accompaniedBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :indexOf,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Index that accompanies a resource.".freeze,
      inverseOf: "bibframe:index".freeze,
      label: "Index to".freeze,
      subPropertyOf: "bibframe:accompanies".freeze,
      type: "owl:ObjectProperty".freeze
    property :instanceOf,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Work the Instance described instantiates or manifests. For use to connect Instances to Works in the BIBFRAME structure.".freeze,
      domain: "bibframe:Instance".freeze,
      inverseOf: "bibframe:hasInstance".freeze,
      label: "Instance of".freeze,
      range: "bibframe:Work".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :instrument,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Instrument for which a musical Work is appropriate.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Instrument".freeze,
      range: "bibframe:MusicInstrument".freeze,
      type: "owl:ObjectProperty".freeze
    property :instrumentalType,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Specific role of instrument, such as alternate, doubling, solo, ensemble.".freeze,
      domain: "bibframe:MusicInstrument".freeze,
      label: "Instrument role".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :intendedAudience,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Information that identifies the specific audience or intellectual level for which the content of the resource is considered appropriate.".freeze,
      label: "Intended audience".freeze,
      range: "bibframe:IntendedAudience".freeze,
      type: "owl:ObjectProperty".freeze
    property :issuance,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Categorization reflecting whether a resource is issued in one or more parts, the way it is updated, and its intended termination.".freeze,
      label: "Mode of issuance".freeze,
      range: "bibframe:Issuance".freeze,
      type: "owl:ObjectProperty".freeze
    property :issuedWith,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource that is issued on the same carrier as the resource being described.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Issued with".freeze,
      range: "bibframe:Instance".freeze,
      subPropertyOf: "bibframe:accompanies".freeze,
      type: "owl:SymmetricProperty".freeze
    property :itemOf,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze, "2017-02-07 (slight revision of definition)".freeze],
      definition: "Instance for which the described Item is an example.".freeze,
      domain: "bibframe:Item".freeze,
      inverseOf: "bibframe:hasItem".freeze,
      label: "Holding for".freeze,
      range: "bibframe:Instance".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :itemPortion,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number attached to a classification string that indicates a particular item.".freeze,
      domain: "bibframe:Classification".freeze,
      label: "Classification item number".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :language,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Language associated with a resource or its parts.".freeze,
      label: "Language information".freeze,
      range: "bibframe:Language".freeze,
      type: "owl:ObjectProperty".freeze
    property :lastIssue,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Ending date of a resource and/or the sequential designations.".freeze,
      label: "Multipart last issue".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :layout,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Arrangement of text, images, tactile notation, etc., in a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Layout".freeze,
      range: "bibframe:Layout".freeze,
      type: "owl:ObjectProperty".freeze
    property :legalDate,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Date of legal work, or promulgation of a law, or signing of a treaty.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Date of legal work".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibframe:date".freeze,
      type: "owl:DatatypeProperty".freeze
    property :mainTitle,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Title being addressed. Possible title component.".freeze,
      domain: "bibframe:Title".freeze,
      label: "Main title".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :media,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Categorization reflecting the general type of intermediation device required to view, play, run, etc., the content of a resource.".freeze,
      label: "Media type".freeze,
      range: "bibframe:Media".freeze,
      type: "owl:ObjectProperty".freeze
    property :mergedToForm,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "One of two or more resources that come together to form a new resource.".freeze,
      inverseOf: "bibframe:mergerOf".freeze,
      label: "Merged to form".freeze,
      subPropertyOf: "bibframe:succeededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :mergerOf,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "One of two or more resources which came together to form a new resource.".freeze,
      inverseOf: "bibframe:mergedToForm".freeze,
      label: "Merger of".freeze,
      subPropertyOf: "bibframe:precededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :mount,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Physical material used for the support or backing to which the base material of a resource has been attached.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Mount material".freeze,
      range: "bibframe:Mount".freeze,
      type: "owl:ObjectProperty".freeze
    property :musicFormat,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Layout for content of a resource that is presented in the form of musical notation, such as full score, condensed score, vocal score, etc.".freeze,
      label: "Format of notated music".freeze,
      range: "bibframe:MusicFormat".freeze,
      type: "owl:ObjectProperty".freeze
    property :musicKey,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Pitch and mode for music.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Music key".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :musicMedium,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Instrumental, vocal, and/or other medium of performance for which a musical resource was originally conceived, written or performed.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Music medium of performance".freeze,
      range: "bibframe:MusicMedium".freeze,
      type: "owl:ObjectProperty".freeze
    property :musicOpusNumber,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Numeric designation of a musical work assigned by a composer, publisher, or a musicologist.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Music opus number".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :musicSerialNumber,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Numeric designation for musical works consecutively numbered in music reference sources.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Music serial number".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :musicThematicNumber,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Numeric designation for a musical work as found in a thematic index for the composer.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Music thematic number".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :natureOfContent,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Characterization that epitomizes the primary content of a resource, e.g., field recording of birdsong; combined time series analysis and graph plotting system.".freeze,
      label: "Content nature".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :notation,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Alphabet, script, or symbol system used to convey the content of the resource, including specialized scripts, typefaces, tactile notation, movement notation, and musical notation.".freeze,
      label: "Notation system".freeze,
      range: "bibframe:Notation".freeze,
      type: "owl:ObjectProperty".freeze
    property :note,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "General textual information relating to a resource, such as Information about a specific copy of a resource or information about a particular attribute of a resource.".freeze,
      label: "Note".freeze,
      range: "bibframe:Note".freeze,
      type: "owl:ObjectProperty".freeze
    property :noteType,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Type of note.".freeze,
      domain: "bibframe:Note".freeze,
      label: "Note type".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :organization,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Manner in which the resource is divided into smaller units.".freeze,
      domain: "bibframe:Arrangement".freeze,
      label: "Organization of material".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :originDate,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Date or date range associated with the creation of a Work.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Associated title date".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibframe:date".freeze,
      type: "owl:DatatypeProperty".freeze
    property :originPlace,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Place from which the creation of the Work originated.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Associated title place".freeze,
      range: "bibframe:Place".freeze,
      subPropertyOf: "bibframe:place".freeze,
      type: "owl:ObjectProperty".freeze
    property :originalVersion,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource is the original version of which this resource is a reproduction.".freeze,
      inverseOf: "bibframe:originalVersionOf".freeze,
      label: "Original version".freeze,
      subPropertyOf: "bibframe:derivativeOf".freeze,
      type: "owl:ObjectProperty".freeze
    property :originalVersionOf,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Original version of a resource.".freeze,
      inverseOf: "bibframe:originalVersion".freeze,
      label: "Original version of".freeze,
      subPropertyOf: "bibframe:hasDerivative".freeze,
      type: "owl:ObjectProperty".freeze
    property :otherEdition,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-05-13 (symmetrical)".freeze],
      definition: "Resource has other available editions, for example simultaneously published language editions or reprints.".freeze,
      label: "Other edition".freeze,
      subPropertyOf: "bibframe:derivativeOf".freeze,
      type: "owl:SymmetricProperty".freeze
    property :otherPhysicalFormat,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource that is manifested in another physical carrier.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Has other physical format".freeze,
      range: "bibframe:Instance".freeze,
      subPropertyOf: "bibframe:hasEquivalent".freeze,
      type: "owl:SymmetricProperty".freeze
    property :outerGRing,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Coordinate pairs that identify the closed non-intersecting boundary of the area covered.".freeze,
      domain: "bibframe:Cartographic".freeze,
      label: "Cartographic outer G ring area covered".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :part,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Part of a resource to which information applies.".freeze,
      label: "Part".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :partName,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Part or section name of a title. Possible title component.".freeze,
      domain: "bibframe:Title".freeze,
      label: "Part title".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :partNumber,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Part or section enumeration of a title. Possible title component.".freeze,
      domain: "bibframe:Title".freeze,
      label: "Part number".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :partOf,
      comment: ["Expected value Work, Instance or Item".freeze, "Used with Work, Instance or Item".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource in which the described resource is physically or logically contained.".freeze,
      inverseOf: "bibframe:hasPart".freeze,
      label: "Is part of".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :pattern,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Pattern of arrangement of materials within a unit.".freeze,
      domain: "bibframe:Arrangement".freeze,
      label: "Arrangement of material".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :physicalLocation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Location in the holding agency where the item is shelved or stored.".freeze,
      domain: "bibframe:Item".freeze,
      label: "Storing or shelving location".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :place,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Geographic location or place entity associated with a resource or element of description, such as the place associated with the publication, printing, distribution, issue, release or production of a resource, place of an event.".freeze,
      label: "Place".freeze,
      range: "bibframe:Place".freeze,
      type: "owl:ObjectProperty".freeze
    property :polarity,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Relationship of the colors and tones in an image to the colors and tones of the object reproduced.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Polarity".freeze,
      range: "bibframe:Polarity".freeze,
      type: "owl:ObjectProperty".freeze
    property :precededBy,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that precedes the resource being described, e.g., is earlier in time or before in narrative.".freeze,
      inverseOf: "bibframe:succeededBy".freeze,
      label: "Preceded by".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :preferredCitation,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Citation to the resource preferred by its custodian of the resource.".freeze,
      label: "Preferred citation".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :productionMethod,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Process used to produce a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Production method".freeze,
      range: "bibframe:ProductionMethod".freeze,
      type: "owl:ObjectProperty".freeze
    property :projection,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (changed from data to object property)".freeze],
      definition: "Method or system used to represent the surface of the earth or of a celestial sphere on a plane.".freeze,
      domain: "bibframe:Cartographic".freeze,
      label: "Cartographic projection".freeze,
      range: "bibframe:Projection".freeze,
      type: "owl:ObjectProperty".freeze
    property :projectionCharacteristic,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (fixed typo in property name)".freeze],
      definition: "Technical specification relating to the projection of a motion picture film.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Projection characteristic".freeze,
      range: "bibframe:ProjectionCharacteristic".freeze,
      type: "owl:ObjectProperty".freeze
    property :provisionActivity,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (revised label and slightly revised definition)".freeze],
      definition: "Place, name, and/or date information relating to the publication, printing, distribution, issue, release, production, etc. of a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Provision activity".freeze,
      range: "bibframe:ProvisionActivity".freeze,
      type: "owl:ObjectProperty".freeze
    property :provisionActivityStatement,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Statement relating to providers of a resource; usually transcribed.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Provider statement".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :qualifier,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Qualifier of information, such as an addition to a title to make it unique or qualifying information associated with an identifier.".freeze,
      label: "Qualifier".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :reductionRatio,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Size of a micro-image in relation to the original from which it was produced.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Reduction ratio".freeze,
      range: "bibframe:ReductionRatio".freeze,
      type: "owl:ObjectProperty".freeze
    property :referencedBy,
      comment: ["Expected value Work, Instance or Item".freeze, "Used with Work, Instance or Item".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that references the described resource".freeze,
      inverseOf: "bibframe:references".freeze,
      label: "Referenced by".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :references,
      comment: ["Expected value Work, Instance or Item".freeze, "Used with Work, Instance or Item".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that is referenced by the described resource.".freeze,
      inverseOf: "bibframe:referencedBy".freeze,
      label: "References".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :relatedTo,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Any relationship between Work, Instance, and Item resources.".freeze,
      label: "Related resource".freeze,
      type: "owl:SymmetricProperty".freeze
    property :replacedBy,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Later resource used in place of an earlier resource, usually because the later resource contains updated or new information.".freeze,
      inverseOf: "bibframe:replacementOf".freeze,
      label: "Succeeded by".freeze,
      subPropertyOf: "bibframe:succeededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :replacementOf,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Earlier resource whose content has been replaced by a later resource, usually because the later resource contains updated or new information.".freeze,
      inverseOf: "bibframe:replacedBy".freeze,
      label: "Preceded by".freeze,
      subPropertyOf: "bibframe:precededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :reproductionOf,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that is a reproduction of another Resource.".freeze,
      domain: "bibframe:Instance".freeze,
      inverseOf: "bibframe:hasReproduction".freeze,
      label: "Reproduction of".freeze,
      range: "bibframe:Instance".freeze,
      subPropertyOf: "bibframe:hasEquivalent".freeze,
      type: "owl:ObjectProperty".freeze
    property :responsibilityStatement,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Statement relating to any persons, families, or corporate bodies responsible for the creation of, or contributing to the content of a resource; usually transcribed.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Creative responsibility statement".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :review,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Review of a resource.".freeze,
      label: "Review content".freeze,
      range: "bibframe:Review".freeze,
      type: "owl:ObjectProperty".freeze
    property :role,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (Changed from data to object property, adjusted label and definition)".freeze],
      definition: "Function provided by a contributor, e.g., author, illustrator, etc.".freeze,
      domain: "bibframe:Contribution".freeze,
      label: "Contributor role".freeze,
      range: "bibframe:Role".freeze,
      type: "owl:ObjectProperty".freeze
    property :scale,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-03 (changed from data to object property)".freeze],
      definition: "Ratio of the dimensions of a form contained or embodied in a resource to the dimensions of the entity it represents, e.g., for images or cartographic resources.".freeze,
      label: "Scale".freeze,
      range: "bibframe:Scale".freeze,
      type: "owl:ObjectProperty".freeze
    property :schedulePart,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Designates whether the classification number is from the standard or optional part of a schedule or table.".freeze,
      domain: "bibframe:Classification".freeze,
      label: "Classification designation".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :separatedFrom,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource that spun off a part of its content to form a new resource.".freeze,
      inverseOf: "bibframe:continuedInPartBy".freeze,
      label: "Separated from".freeze,
      subPropertyOf: "bibframe:precededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :seriesEnumeration,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Series enumeration of the resource; usually transcribed.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Series enumeration".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :seriesOf,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource that is a part of a larger resource.".freeze,
      inverseOf: "bibframe:hasSeries".freeze,
      label: "Series container of".freeze,
      subPropertyOf: "bibframe:hasPart".freeze,
      type: "owl:ObjectProperty".freeze
    property :seriesStatement,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Statement of the series the resource is in; usually transcribed; includes the ISSN if applicable.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Series statement".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :shelfMark,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Piece identifier, such as a call or other type of number.".freeze,
      domain: "bibframe:Item".freeze,
      label: "Shelf mark".freeze,
      range: "bibframe:ShelfMark".freeze,
      type: "owl:ObjectProperty".freeze
    property :soundCharacteristic,
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-21 (fixed name and range typos)".freeze],
      definition: "Technical specification relating to the encoding of sound in a resource.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Sound characteristic".freeze,
      range: "bibframe:SoundCharacteristic".freeze,
      type: "owl:ObjectProperty".freeze
    property :soundContent,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Indication of whether the production of sound is an integral part of the resource.".freeze,
      label: "Sound content".freeze,
      range: "bibframe:SoundContent".freeze,
      type: "owl:ObjectProperty".freeze
    property :source,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Resource from which value or label came or was derived, such as the formal source/scheme from which a classification number is taken or derived, list from which an agent name is taken or derived, source within which an identifier is unique.".freeze,
      label: "Source".freeze,
      range: "bibframe:Source".freeze,
      type: "owl:ObjectProperty".freeze
    property :spanEnd,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Ending number of classification number span.".freeze,
      domain: "bibframe:Classification".freeze,
      label: "Classification number span end".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :splitInto,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "One of two or more resources resulting from the division of an earlier resource into separate resources.".freeze,
      inverseOf: "bibframe:continuesInPart".freeze,
      label: "Split into".freeze,
      subPropertyOf: "bibframe:succeededBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :status,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Designation of the validity or position of something, such as indication that the classification number is canceled or invalid, circulation availability of an item, indication of whether the identifier is canceled or invalid.".freeze,
      label: "Status".freeze,
      range: "bibframe:Status".freeze,
      type: "owl:ObjectProperty".freeze
    property :subject,
      comment: "Used with Work, Instance or Item".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Subject term(s) describing a resource.".freeze,
      label: "Subject".freeze,
      type: "owl:ObjectProperty".freeze
    property :sublocation,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Specific place within the holding entity where the item is located or made available.".freeze,
      domain: "bibframe:Item".freeze,
      label: "Held in sublocation".freeze,
      range: "bibframe:Sublocation".freeze,
      type: "owl:ObjectProperty".freeze
    property :subseriesEnumeration,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Subseries enumeration of the resource; usually transcribed.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Subseries enumeration".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :subseriesOf,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Series resource of which the described resource is a part.".freeze,
      inverseOf: "bibframe:hasSubseries".freeze,
      label: "Subseries of".freeze,
      subPropertyOf: "bibframe:hasPart".freeze,
      type: "owl:ObjectProperty".freeze
    property :subseriesStatement,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Statement of the subseries the resource is in; usually transcribed; includes the ISSN if applicable.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Subseries statement".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :subtitle,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Word, character, or group of words and/or characters that contains the remainder of the title after the main title. Possible title component.".freeze,
      domain: "bibframe:Title".freeze,
      label: "Subtitle".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :succeededBy,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse)".freeze],
      definition: "Resource that succeeds the resource being described, e.g., later in time or after in a narrative.".freeze,
      inverseOf: "bibframe:precededBy".freeze,
      label: "Succeeded by".freeze,
      subPropertyOf: "bibframe:relatedTo".freeze,
      type: "owl:ObjectProperty".freeze
    property :summary,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Summary or abstract of the resource described.".freeze,
      label: "Summary content".freeze,
      range: "bibframe:Summary".freeze,
      type: "owl:ObjectProperty".freeze
    property :supplement,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource that updates or otherwise complements the predominant resource.".freeze,
      inverseOf: "bibframe:supplementTo".freeze,
      label: "Supplement".freeze,
      subPropertyOf: "bibframe:accompaniedBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :supplementTo,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze],
      definition: "Resource that is updated or otherwise complemented by the augmenting resource.".freeze,
      inverseOf: "bibframe:supplement".freeze,
      label: "Supplement to".freeze,
      subPropertyOf: "bibframe:accompanies".freeze,
      type: "owl:ObjectProperty".freeze
    property :supplementaryContent,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Material such as an index, bibliography, appendix intended to supplement the primary content of a resource.".freeze,
      label: "Supplementary material".freeze,
      range: "bibframe:SupplementaryContent".freeze,
      type: "owl:ObjectProperty".freeze
    property :systemRequirement,
      "dc:modified": ["2016-04-21 (New)".freeze, "2017-02-06 (Changed from data to object property, changed property name from plural to singular)".freeze],
      definition: "Equipment or system requirement beyond what is normal and obvious for the type of carrier or type of file, such as make and model of equipment or hardware, operating system, amount of memory, programming language, other necessary software, any plug-ins or peripherals required to play, view, or run the resource, etc.".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Equipment or system requirements".freeze,
      range: "bibframe:SystemRequirement".freeze,
      type: "owl:ObjectProperty".freeze
    property :table,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Number of the table from which the classification number in a subdivision entry is taken, e.g., a DDC table.".freeze,
      domain: "bibframe:Classification".freeze,
      label: "Classification table identification".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :tableOfContents,
      comment: "Used with Work or Instance".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Table of contents of the described resource.".freeze,
      label: "Table of contents content".freeze,
      range: "bibframe:TableOfContents".freeze,
      type: "owl:ObjectProperty".freeze
    property :tableSeq,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Sequence number or other identifier for an internal classification sub arrangement or add in a classification scheme.".freeze,
      domain: "bibframe:Classification".freeze,
      label: "Classification table sequence number".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :temporalCoverage,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Time period coverage of the content of the resource.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Temporal coverage".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :title,
      comment: "Used with Work, Instance or Item".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Name given to a resource.".freeze,
      label: "Title resource".freeze,
      range: "bibframe:Title".freeze,
      type: "owl:ObjectProperty".freeze
    property :translation,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze, "2017-02-03 (corrected subproperty)".freeze],
      definition: "Resource that translates the text of the source entity into a language different from that of the original.".freeze,
      inverseOf: "bibframe:translationOf".freeze,
      label: "Translation as".freeze,
      subPropertyOf: "bibframe:hasDerivative".freeze,
      type: "owl:ObjectProperty".freeze
    property :translationOf,
      comment: ["Expected value Work or Instance".freeze, "Used with Work or Instance".freeze],
      "dc:modified": ["2016-04-21 (New)".freeze, "2016-04-29 (added inverse, updated range)".freeze, "2017-02-03 (corrected subproperty)".freeze],
      definition: "Resource that has been translated, i.e., the text is expressed in a language different from that of the original resource.".freeze,
      inverseOf: "bibframe:translation".freeze,
      label: "Translation of".freeze,
      subPropertyOf: "bibframe:derivativeOf".freeze,
      type: "owl:ObjectProperty".freeze
    property :unit,
      comment: "Used with Unspecified".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Units in which a value is expressed, such as the physical or logical constituent of a resource (e.g., a volume, audiocassette, film reel, a map, a digital file).".freeze,
      label: "Type of unit".freeze,
      range: "bibframe:Unit".freeze,
      type: "owl:ObjectProperty".freeze
    property :usageAndAccessPolicy,
      comment: "Used with Work, Instance or Item".freeze,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "General statement of allowances and restrictions on access to a resource, including retention, reproduction, access, and lending.".freeze,
      label: "Use and access condition".freeze,
      range: "bibframe:UsageAndAccessPolicy".freeze,
      type: "owl:ObjectProperty".freeze
    property :variantType,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Type of title variation, e.g., acronym, cover, spine, earlier, later, series version.".freeze,
      domain: "bibframe:VariantTitle".freeze,
      label: "Variant title type".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :version,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Term or terms that identify works such as arranged for music, vulgate for religious work, etc.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Version".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :videoCharacteristic,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Technical specification relating to the encoding of video images in a resource".freeze,
      domain: "bibframe:Instance".freeze,
      label: "Video characteristic".freeze,
      range: "bibframe:VideoCharacteristic".freeze,
      type: "owl:ObjectProperty".freeze
    property :voice,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Voice for which a musical work is appropriate, such as soprano, tenor, mixed.".freeze,
      domain: "bibframe:Work".freeze,
      label: "Voice".freeze,
      range: "bibframe:MusicVoice".freeze,
      type: "owl:ObjectProperty".freeze
    property :voiceType,
      "dc:modified": "2016-04-21 (New)".freeze,
      definition: "Specific type of voice group, such as chorus, solo.".freeze,
      domain: "bibframe:MusicVoice".freeze,
      label: "Type of voice".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
  end
end