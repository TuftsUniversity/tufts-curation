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
      module Administrative
        extend ActiveSupport::Concern

        REVIEWED_STRING = 'Batch Reviewed'.freeze

        included do
          property :displays_in, predicate: ::Tufts::Vocab::Tufts.displays_in do |index|
            index.as :stored_searchable, :facetable
          end

          property :steward, predicate: ::Tufts::Vocab::Tufts.steward, multiple: false do |index|
            index.as :stored_searchable
          end

          property :downloadable, predicate: ::Tufts::Vocab::Tufts.downloadable, multiple: false do |index|
            index.as :stored_searchable
          end

          property :internal_note, predicate: ::Tufts::Vocab::Tufts.internal_note, multiple: true do |index|
            index.as :stored_searchable
          end

          property :audience, predicate: ::RDF::Vocab::DC.audience, multiple: false do |index|
            index.as :stored_searchable
          end

          property :embargo_note, predicate: ::RDF::Vocab::PREMIS.TermOfRestriction, multiple: false do |index|
            index.as :stored_searchable
          end

          property :end_date, predicate: ::RDF::Vocab::PREMIS.hasEndDate, multiple: false do |index|
            index.as :stored_searchable
          end

          property :accrual_policy, predicate: ::RDF::Vocab::DC.accrualPolicy, multiple: false do |index|
            index.as :stored_searchable
          end

          property :rights_note, predicate: ::RDF::Vocab::DC11.rights, multiple: false do |index|
            index.as :stored_searchable
          end

          property :retention_period, predicate: ::Tufts::Vocab::Tufts.retention_period do |index|
            index.as :stored_searchable
          end

          property :admin_start_date, predicate: ::Tufts::Vocab::Tufts.start_date do |index|
            index.as :stored_searchable
          end

          property :qr_status, predicate: ::Tufts::Vocab::Tufts.qr_status do |index|
            index.as :stored_searchable
          end

          property :rejection_reason, predicate: ::Tufts::Vocab::Tufts.rejection_reason do |index|
            index.as :stored_searchable
          end

          property :qr_note, predicate: ::Tufts::Vocab::Tufts.qr_note do |index|
            index.as :stored_searchable
          end

          property :creator_department, predicate: ::Tufts::Vocab::Tufts.creator_department do |index|
            index.as :stored_searchable
          end

          property :legacy_pid, predicate: ::Tufts::Vocab::Tufts.legacy_pid, multiple: false do |index|
            index.as :stored_searchable
          end

          property :createdby, predicate: ::Tufts::Vocab::Tufts.createdby do |index|
            index.as :stored_searchable, :facetable
          end

          property :tufts_license, predicate: ::RDF::Vocab::DC.license do |index|
            index.as :stored_searchable
          end

          property :aspace_cuid, predicate: ::Tufts::Vocab::Tufts.aspace_cuid, multiple: false do |index|
            index.as :stored_searchable
          end
        end

        def mark_reviewed
          self.qr_status = [REVIEWED_STRING]
        end

        def mark_reviewed!
          mark_reviewed
          save
        end

        def reviewed?
          qr_status.include?(REVIEWED_STRING)
        end
      end
    end
  end
end
