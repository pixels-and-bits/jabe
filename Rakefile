#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Jabe'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

APP_RAKEFILE = File.expand_path("../test/dummy/Rakefile", __FILE__)
load 'rails/tasks/engine.rake'

Bundler::GemHelper.install_tasks

task :default do
  # NOTE: There has to be a better way to do this
  Dir.chdir('test/dummy') do
    FileUtils.rm(%w(db/dev.sqlite3)) rescue Errno::ENOENT
    FileUtils.rm(%w(db/test.sqlite3)) rescue Errno::ENOENT
    exit system("bundle exec rake db:migrate db:test:prepare && bundle exec cucumber features")
  end
end
