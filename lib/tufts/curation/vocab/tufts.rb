# frozen_string_literal: true

require 'rdf'

module Tufts
  module Curation
    module Vocab
      # http://dl.tufts.edu/terms/identifier
      class Tufts < RDF::Vocabulary('http://dl.tufts.edu/terms#')
        # term :VotingRecord
        # term :EAD
        # term :EAC
        term :legacy_pid
        term :local_file_type
        term :steward
        term :internal_note
        term :displays_in
        term :term_of_restriction
        term :visibility
        term :batch_id
        term :namespace
        term :is_notes_of
        term :is_slides_of
        term :createdby
        term :template_name
        term :internal_note
        term :retention_period
        term :admin_start_date
        term :qr_status
        term :rejection_reason
        term :qr_note
        term :creator_department
        term :admin_set_member
        term :ordered_creators
        term :ordered_descriptions
        term :downloadable
        term :geog_name
        term :aspace_cuid
      end
    end
  end

  ##
  # Alias for backwards compatibility
  module Vocab
    Tufts = Tufts::Curation::Vocab::Tufts
  end
end
