# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'tufts/curation/version'

Gem::Specification.new do |gem|
  gem.name          = 'tufts-curation'
  gem.version       = Tufts::Curation::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Tom Johnson', 'Data Curation Experts']
  gem.email         = 'tom@curationexpertgem.com'
  gem.summary       = 'ActiveFedora/Hyrax models for curation at ' \
                      'Tufts University.'
  gem.license       = 'Apache-2.0'
  gem.files         = %w[AUTHORS CHANGELOG.md README.md LICENSE] +
                      Dir.glob('lib/**/*.rb')
  gem.require_paths = %w[lib]
  gem.has_rdoc      = false

  gem.required_ruby_version = '>= 2.3.4'

  gem.add_dependency 'activesupport'
  gem.add_dependency 'active-fedora', '>= 11.5', '<= 12.99'
  gem.add_dependency 'hyrax',         '>= 2.0.0', '<= 2.2.0'

  gem.add_development_dependency 'yard',         '~> 0.9'
  gem.add_development_dependency 'bixby',        '~> 0.3'
  gem.add_development_dependency 'hyrax-spec',   '~> 0.2'
  gem.add_development_dependency 'rspec',        '~> 3.6'
  gem.add_development_dependency 'coveralls',    '~> 0.8'
  gem.add_development_dependency 'solr_wrapper', '>= 0.3'
  gem.add_development_dependency 'fcrepo_wrapper'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
end
