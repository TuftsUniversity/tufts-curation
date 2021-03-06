# frozen_string_literal: true

module Tufts
  module Curation
    class VotingRecordIndexer < Tufts::Curation::Indexer
      # The Nokogiri document
      attr_accessor :noko

      # rubocop:disable Metrics/AbcSize
      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/BlockLength
      def generate_solr_document
        super.tap do |solr_doc|
          # Only do this after the indexer has the file_set
          unless object.file_sets.nil?
            load_elections_xml(object)
            if @noko.nil?
              Rails.logger.warn("Couldn't find the Voting Record XML for #{solr_doc['id']}")
            else
              solr_doc['voting_record_xml_tesi'] = @noko.to_xml
              solr_doc['format_ssim'] = 'Election Record' # solr_doc['format_tesim']
              solr_doc['title_ssi'] = solr_doc['title_tesim'].first # solr_doc['title_tesi']

              solr_doc['party_affiliation_sim'] = get_all_vs('//candidate/@affiliation', '//elector/@affiliation')
              solr_doc['party_affiliation_id_ssim'] = get_all_vs('//candidate/@affiliation_id', '//elector/@affiliation_id')
              # solr_doc['party_affiliation_id_ssim'].delete_if { |party_id| Party.find(party_id).nil? }

              solr_doc['date_tesim'] = get_all_vs('/election_record/@date')
              solr_doc['date_isi'] = solr_doc['date_tesim'].map(&:to_i).first
              # solr_doc["date_sim"] = date.first[0..3] unless date.first.nil?

              solr_doc['office_id_ssim'] = get_v('/election_record/office/@office_id')
              solr_doc['office_role_title_tesim'] = get_all_vs('//role/@title')
              solr_doc['office_name_tesim'] = get_authority_from_nnv(solr_doc['office_id_ssim'], "office")

              solr_doc['state_name_tesim'] = solr_doc['state_name_sim'] = get_all_vs('//admin_unit[@type="State"]/@name')

              solr_doc['election_id_ssim'] = [get_v('/election_record/@election_id')]
              solr_doc['election_type_tesim'] = solr_doc['election_type_sim'] = [get_v('/election_record/@type')]

              solr_doc['candidate_id_ssim'] = get_all_vs('//candidate/@name_id')
              solr_doc['candidate_name_tesim'] = get_all_vs('//candidate/@name')

              solr_doc['elector_name_tesim'] = get_all_vs("//elector/@name")

              solr_doc['jurisdiction_tesim'] = solr_doc['jurisdiction_sim'] = [get_v('/election_record/office/@scope')]

              solr_doc['handle_ssi'] = get_v('/election_record/@handle')
              solr_doc['iteration_tesim'] = [get_v('/election_record/@iteration')]
              # solr_doc['page_image_urn_ssim'] = get_all_vs("//reference[@type='page_image']/@urn").uniq
              solr_doc['iiif_page_images_ssim'] = get_iiif_ids(get_all_vs("//reference[@type='page_image']/@urn").uniq)

              solr_doc['all_text_timv'] = get_all_text(solr_doc)
            end
          end
        end # End super.tap
      end
      # rubocop:enable Metrics/AbcSize
      # rubocop:enable Metrics/MethodLength
      # rubocop:enable Metrics/BlockLength
      # End def generate_solr_document

      private

        ##
        # Gets the first value from a place.
        #
        # @return {str}
        #   The first value returned from xpath.
        def get_v(xpath)
          @noko.xpath(xpath).first.value
        end

        ##
        # Gets all the values from a node set as strings in an array.
        #
        # @param {str} xpaths
        #   The xpath strings to search
        #
        # @return {arr}
        #   All the values returned by xpaths
        def get_all_vs(*xpaths)
          if xpaths.length.zero?
            Rails.logger.info("You need to pass at least one argument to get_all_vs!")
            return []
          end

          all_values = []
          xpaths.each do |path|
            @noko.xpath(path).each { |node| all_values << node.value }
          end
          all_values - ['null']
        end

        ##
        # Gets all the text and makes it one, like Voltron.
        #
        # @param {Hash} doc
        #   The solr document.
        #
        # @return {string}
        # All the text values in the xml.
        def get_all_text(doc)
          all_text_values = []
          undesirables = ['voting_record_xml_tesi', 'object_profile_ssm']

          doc.each do |key, value|
            all_text_values << value unless undesirables.include?(key)
          end

          all_text_values.flatten.uniq - ["null", ""]
        end

        # def office_name(id)
        #   Office.find(id).blank? ? nil : office.name
        # end

        ##
        # Loads the elections xml file into @noko
        #
        # @param {obj} active_fedora_obj
        #   The object from ActiveFedora
        def load_elections_xml(active_fedora_obj)
          active_fedora_obj.file_sets.each do |file_set|
            f = file_set.original_file
            begin
              xml = Nokogiri::XML(f.content)
              next unless xml.xpath('/*').first.name == 'election_record'
            rescue
              next
            end
            xml.remove_namespaces!
            @noko = xml
          end # end each file set
        end

        ##
        # Sends the api request to the NNV site to get authorities
        #
        # @param {str} q
        #   The search string, an id for office or party, a name for state.
        # @param {str} auth
        #   The authority to search: office, party, or state.
        #
        # @return {str}
        #   Either the authority from QA or the original term if no authority is found.
        def get_authority_from_nnv(q, auth)
          begin
            base_url = "http://elections-prod-01.lib.tufts.edu/qa/search"
            uri = URI.parse("#{base_url}/#{auth}/subjects?q=#{q}")
            response = Net::HTTP.get_response(uri)

          rescue StandardError => error
            Rails.logger.warn(error)
            return q
          end
          response.code == "200" ? response.body : q
        end

        ##
        # Translates Fedora 3 urns to IIIF ids.
        #
        # @param {arr} urns
        #   The Fedora 3 urns.
        #
        # @return {arr}
        #   The iiif ids.
        def get_iiif_ids(urns)
          urns.map do |urn|
            pid = urn.sub('central:dca:MS115:', '').sub(':', '\:')
            begin
              ActiveFedora::Base.where(legacy_pid_tesim: pid).first.file_sets.first.files.first.id
            rescue StandardError
              next
            end
          end
        end

        # Remove NNV collections from DL collections facet.
        def add_dl_collections_facet(solr_doc)
          solr_doc
        end
    end # End class VotingRecordIndexer
  end
end
