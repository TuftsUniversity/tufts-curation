# frozen_string_literal: true

require 'pry' unless ENV['CI']

require 'bundler/setup'
require 'active_fedora'
require 'hyrax/spec/matchers'
require 'tufts/curation'
require 'tufts/curation/spec/shared_examples'

Dir['./spec/support/**/*.rb'].each { |f| require f }

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
