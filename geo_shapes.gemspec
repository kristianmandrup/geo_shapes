# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "geo_shapes"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristian Mandrup"]
  s.date = "2012-04-01"
  s.description = "Shapes that can be used in combination with points and vectors to do some exciting things!"
  s.email = "kmandrup@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.textile"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.textile",
    "Rakefile",
    "VERSION",
    "geo_shapes.gemspec",
    "lib/geo_shapes.rb",
    "lib/geo_shapes/radius.rb",
    "lib/geo_shapes/radius/circular.rb",
    "lib/geo_shapes/radius/random/points.rb",
    "lib/geo_shapes/radius/random/radiant.rb",
    "lib/geo_shapes/radius/rectangular.rb",
    "lib/geo_shapes/radius/square.rb",
    "lib/geo_shapes/radius/within_radius.rb",
    "lib/geo_shapes/shape.rb",
    "lib/geo_shapes/shape/circle.rb",
    "lib/geo_shapes/shape/rectangle.rb",
    "lib/geo_shapes/shape/square.rb",
    "spec/geo_shapes/shape.rb",
    "spec/geo_shapes/shape/box.rb",
    "spec/geo_shapes/shape/circle.rb",
    "spec/geo_shapes/shape/rectangle.rb",
    "spec/geo_shapes/shape/square.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/kristianmandrup/geo_shapes"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.20"
  s.summary = "Common shapes for your geo calculation needs"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<geo_vectors>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.0"])
      s.add_development_dependency(%q<jeweler>, [">= 1.6.2"])
      s.add_development_dependency(%q<simplecov>, [">= 0.5"])
    else
      s.add_dependency(%q<geo_vectors>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.1.0"])
      s.add_dependency(%q<jeweler>, [">= 1.6.2"])
      s.add_dependency(%q<simplecov>, [">= 0.5"])
    end
  else
    s.add_dependency(%q<geo_vectors>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.1.0"])
    s.add_dependency(%q<jeweler>, [">= 1.6.2"])
    s.add_dependency(%q<simplecov>, [">= 0.5"])
  end
end

