# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ogg-view-helpers/version"

Gem::Specification.new do |s|
  s.name        = "ogg-view-helpers"
  s.version     = Ogg::View::Helpers::VERSION
  s.authors     = ["Paul Cook"]
  s.email       = ["paul.cook@osumc.edu"]
  s.homepage    = ""
  s.summary     = %q{View Helpers for OGG projects}
  s.description = %q{View Helpers for OGG projects}

  s.rubyforge_project = "ogg-view-helpers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
