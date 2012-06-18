# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "notice-helper/version"

Gem::Specification.new do |s|
  s.name        = "notice-helper"
  s.version     = Ogg::View::Helpers::VERSION
  s.authors     = ["Paul Cook"]
  s.email       = ["paul.cook@osumc.edu"]
  s.homepage    = "http://ogg.osu.edu"
  s.summary     = %q{A Notice Helper}
  s.description = %q{A Notice helper for flash messages}

  s.rubyforge_project = "notice-helper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  #s.add_dependency("railties", "~> 3.2")
  s.add_development_dependency "rspec"
  s.add_dependency "jquery-rails"
  # s.add_runtime_dependency "rest-client"
end
