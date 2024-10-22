module Tufts
  module Curation
    class IndexerIdentifier
      # Allow for global configuration
      class << self
        attr_accessor :configured_app_name
      end

      attr_accessor :app_name

      def initialize(app_name = nil)
        # Use the provided name, or fall back to the configured name, or the default
        @app_name = app_name || self.class.configured_app_name || 'default_app'
      end

      def identify
        @app_name
      end
    end
  end
end
