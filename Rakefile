begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rspec/core/rake_task'
require 'rubocop/rake_task'

require 'fcrepo_wrapper'
require 'solr_wrapper'
require 'active_fedora/rake_support'

Bundler::GemHelper.install_tasks

SolrWrapper.default_instance_options = {
  verbose: true,
  port: 8984,
  version: '6.5.0',
  instance_dir: 'solr/install'
}

desc 'Run style checker'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = true
end

desc 'Run specs'
RSpec::Core::RakeTask.new(:spec)

namespace :tufts do
  namespace :curation do
    desc 'Run specs with Fedora & Solr servers'
    task :spec do
      with_test_server do
        Rake::Task['spec'].invoke
      end
    end
  end
end

desc 'Check style and run specs'
task ci: ['rubocop', 'tufts:curation:spec']

task default: :ci
