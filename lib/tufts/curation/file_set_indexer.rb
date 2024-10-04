module Tufts
  module Curation
    class FileSetIndexer < ActiveFedora::IndexingService
      include Hyrax::IndexesThumbnails
      include Hyrax::IndexesBasicMetadata
      STORED_LONG = Solrizer::Descriptor.new(:long, :stored)
      # rubocop:disable Metrics/AbcSize
      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/BlockLength
      def generate_solr_document
        super.tap do |solr_doc|
          solr_doc['hasRelatedMediaFragment_ssim'] = object.representative_id
          solr_doc['hasRelatedImage_ssim'] = object.thumbnail_id
          # Label is the actual file name. It's not editable by the user.
          solr_doc['label_tesim'] = object.label
          solr_doc['label_ssi']   = object.label
          solr_doc['file_format_tesim'] = file_format
          solr_doc['file_format_sim']   = file_format
          solr_doc['file_size_lts'] = object.file_size[0]
          solr_doc['all_text_timv'] = object.extracted_text.content if object.extracted_text.present?
          solr_doc['height_is'] = Integer(object.height.first) if object.height.present?
          solr_doc['width_is']  = Integer(object.width.first) if object.width.present?
          solr_doc['visibility_ssi'] = object.visibility
          solr_doc['mime_type_ssi']  = object.mime_type
          # Index the Fedora-generated SHA1 digest to create a linkage between
          # files on disk (in fcrepo.binary-store-path) and objects in the repository.
          solr_doc['digest_ssim'] = digest_from_content
          solr_doc['page_count_tesim']        = object.page_count
          solr_doc['file_title_tesim']        = object.file_title
          solr_doc['duration_tesim']          = object.duration
          solr_doc['sample_rate_tesim']       = object.sample_rate
          solr_doc['original_checksum_tesim'] = object.original_checksum

          if object.mime_type == "text/html"
            results = {}

            results.each do |field_name, field_values|
              # puts("  #{field_name}")
              if solr_doc["#{field_name}_tesim"].nil?
                solr_doc["#{field_name}_tesim"] = field_values
              else
                solr_doc["#{field_name}_tesim"] += field_values
              end
            end
          end # end if
        end # end tap
      end # end method

      private

        def digest_from_content
          return unless object.original_file
          object.original_file.digest.first.to_s
        end

        def file_format
          if object.mime_type.present? && object.format_label.present?
            "#{object.mime_type.split('/').last} (#{object.format_label.join(', ')})"
          elsif object.mime_type.present?
            object.mime_type.split('/').last
          elsif object.format_label.present?
            object.format_label
          end
        end

        def find_controlaccess(node, results)
          controlaccess = node.xpath('./controlaccess')

          return false if controlaccess.empty?

          # puts('  ' + node.name + (node.name == 'archdesc' ? '' : (' ' + node['level'] + ' ' + node['id'])))
          find_tag(controlaccess, 'persname', results)
          find_tag(controlaccess, 'corpname', results)
          find_tag(controlaccess, 'famname', results)
          find_tag(controlaccess, 'geogname', results)
          find_tag(controlaccess, 'genreform', results)
          find_tag(controlaccess, 'subject', results)
          # find_tag(controlaccess, 'title', results)

          true
        end

        def find_dsc(node, results)
          dsc = node.xpath('./dsc')

          return false if dsc.empty?

          unless find_series(dsc, results)  # ASpace series (c)
            find_series(dsc, results, 1)    # non-ASpace series (c01, c02...)
          end

          true
        end

        def find_series(node, results, level = 0)
          if level.zero?
            level_string = ''
            next_level = 0
          else
            level_string = format('%02d', level)
            next_level = level + 1
          end

          serieses = node.xpath('./c' + level_string)

          return false if serieses.empty?

          serieses.each do |series|
            find_controlaccess(series, results)
            find_series(series, results, next_level)
          end

          true
        end

        def find_tag(node, tag, results)
          subnodes = node.xpath('./' + tag)

          return false if subnodes.empty?

          # puts('    ' + tag)
          tag_hash = results[tag]

          if tag_hash.nil?
            tag_hash = {}
            results[tag] = tag_hash
          end

          subnodes.each do |subnode|
            # puts('      ' + subnode.text)
            tag_hash[subnode.text] = subnode.text
          end

          true
        end
    end
  end
end
