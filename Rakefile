$:.unshift(File.dirname(__FILE__))

require 'rubygems'
require 'rake'
require "bundler/setup"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "myerp_api"

    gem.author = "Didier Baquier"
    gem.email = %q{didier.baquier@myerp.com}
    gem.homepage = %q{http://www.myerp.com}
    gem.summary = %q{The myERP API gem is a lightweight gem for accessing the myERP REST web services}
    gem.description = %q{The myERP API gem is a lightweight gem for accessing the myERP REST web services}
    gem.license = 'MIT'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError => e
  p e
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => %w(spec)
