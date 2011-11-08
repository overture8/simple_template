# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "simple_template/version"

Gem::Specification.new do |s|
  s.name        = "simple_template"
  s.version     = SimpleTemplate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Phil McClure"]
  s.email       = ["pmcclure@rumblelabs.com"]
  s.homepage    = ""
  s.summary     = %q{simple templating language}
  s.description = %q{Very simple template language for text output.}

  s.rubyforge_project = "simple_template"

  s.add_development_dependency "minitest"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
