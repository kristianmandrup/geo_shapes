require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "geo_shapes"
  gem.homepage = "http://github.com/kristianmandrup/geo_shapes"
  gem.license = "MIT"
  gem.summary = %Q{Common shapes for your geo calculation needs}
  gem.description = %Q{Shapes that can be used in combination with points and vectors to do some exciting things!}
  gem.email = "kmandrup@gmail.com"
  gem.authors = ["Kristian Mandrup"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  #  gem.add_runtime_dependency 'jabber4r', '> 0.1'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
  
  gem.add_runtime_dependency 'party_proxy', '~> 0.2.2'  
end
Jeweler::RubygemsDotOrgTasks.new
