# frozen_string_literal: true

module Tufts
  module Curation
    module Schema
      ##
      # Schema for Tufts administrative metadata
      #
      # @example applying the administrative schema
      #
      #   class WorkType < ActiveFedora::Base
      #     include ::Hyrax::WorkBehavior
      #     include Tufts::Curation::Schema::Administrative
      #     include ::Hyrax::BasicMetadata
      #   end
      #
      # @see ActiveFedora::Base
      # @see Hyrax::WorkBehavior
      # rubocop:disable Metrics/ModuleLength:
      module Descriptive
        extend ActiveSupport::Concern

        included do
          property :geographic_name,
                   predicate: RDF::Vocab::DC.spatial do |index|
            index.as :stored_searchable
          end

          property :geog_name,
                   predicate: ::Tufts::Vocab::Tufts.geog_name, multiple: true do |index|
            index.as :stored_searchable, :facetable
          end

          property :held_by, predicate: RDF::Vocab::Bibframe.heldBy do |index|
            index.as :stored_searchable, :facetable
          end

          property :alternative_title,
                   predicate: RDF::Vocab::DC.alternative do |index|
            index.as :stored_searchable
          end

          property :abstract, predicate: RDF::Vocab::DC.abstract do |index|
            index.as :stored_searchable
          end

          property :table_of_contents,
                   predicate: RDF::Vocab::DC.tableOfContents do |index|
            index.as :stored_searchable
          end

          property :primary_date, predicate: RDF::Vocab::DC11.date do |index|
            index.as :stored_searchable
          end

          property :date_accepted,
                   predicate: RDF::Vocab::DC.dateAccepted do |index|
            index.as :stored_searchable
          end

          property :date_available,
                   predicate: RDF::Vocab::DC.available do |index|
            index.as :stored_searchable
          end

          property :date_copyrighted,
                   predicate: RDF::Vocab::DC.dateCopyrighted do |index|
            index.as :stored_searchable
          end

          property :date_issued,
                   predicate: RDF::Vocab::EBUCore.dateIssued do |index|
            index.as :stored_searchable
          end

          property :rights_holder,
                   predicate: RDF::Vocab::DC.rightsHolder do |index|
            index.as :stored_searchable
          end

          property :format_label,
                   predicate: RDF::Vocab::PREMIS.hasFormatName do |index|
            index.as :stored_searchable
          end

          property :replaces, predicate: RDF::Vocab::DC.replaces do |index|
            index.as :stored_searchable
          end

          property :is_replaced_by,
                   predicate: RDF::Vocab::DC.isReplacedBy do |index|
            index.as :stored_searchable
          end

          property :has_part, predicate: RDF::Vocab::DC.hasPart do |index|
            index.as :stored_searchable
          end

          property :extent, predicate: RDF::Vocab::DC.extent do |index|
            index.as :stored_searchable
          end

          property :personal_name,
                   predicate: RDF::Vocab::MADS.PersonalName do |index|
            index.as :stored_searchable
          end

          property :corporate_name,
                   predicate: RDF::Vocab::MADS.CorporateName do |index|
            index.as :stored_searchable
          end

          property :genre, predicate: RDF::Vocab::MADS.GenreForm do |index|
            index.as :stored_searchable
          end

          property :provenance, predicate: RDF::Vocab::DC.provenance do |index|
            index.as :stored_searchable
          end

          property :temporal, predicate: RDF::Vocab::DC.temporal do |index|
            index.as :stored_searchable
          end

          property :funder, predicate: RDF::Vocab::MARCRelators.fnd do |index|
            index.as :stored_searchable
          end

          property :is_part_of, predicate: RDF::Vocab::DC.isPartOf do |index|
            index.as :stored_searchable
          end

          property :dc_access_rights, predicate: RDF::Vocab::DC.accessRights do |index|
            index.as :stored_searchable
          end

          property :doi, predicate: RDF::Vocab::Bibframe.doi, multiple: false do |index|
            index.as :stored_searchable, :facetable
          end

          property :isbn, predicate: RDF::Vocab::Bibframe.isbn do |index|
            index.as :stored_searchable, :facetable
          end

          property :oclc, predicate: ::Tufts::Vocab::Tufts.oclc do |index|
            index.as :stored_searchable
          end

          property :isbn, predicate: RDF::Vocab::Bibframe.dissertation do |index|
            index.as :stored_searchable, :facetable
          end
        end
      end
    end
  end
end
