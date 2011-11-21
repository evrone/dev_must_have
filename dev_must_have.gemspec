# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dev_must_have/version"

Gem::Specification.new do |s|
  s.name        = "dev_must_have"
  s.version     = DevMustHave::VERSION
  s.authors     = ["divineforest"]
  # s.email       = ["email"]
  s.homepage    = "http://github.com/evrone/dev_must_have"
  s.summary     = %q{Meta gem for must have Rails development gems}
  # s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "dev_must_have"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "hirb"
  s.add_runtime_dependency "powder"
end
