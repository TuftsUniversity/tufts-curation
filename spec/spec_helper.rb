# frozen_string_literal: true

SimpleCov.start 'rails' do
  if ENV['CI']
    require 'simplecov-lcov'

    SimpleCov::Formatter::LcovFormatter.config do |c|
      c.report_with_single_file = true
      c.single_report_path = 'coverage/lcov.info'
    end

    formatter SimpleCov::Formatter::LcovFormatter
  end

  add_filter %w[version.rb initializer.rb]
end

require 'pry' unless ENV['CI']
ENV['environment'] ||= 'test'

require 'bundler/setup'
require 'tufts/curation'
require 'tufts/curation/spec/shared_examples'
require 'hyrax/spec/shared_examples'
require 'hyrax/spec/matchers'

Dir['./spec/support/**/*.rb'].each { |f| require f }

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
