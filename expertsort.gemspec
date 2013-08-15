# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "expertsort/version"

Gem::Specification.new do |s|
  s.name        = "expertsort"
  s.version     = Expertsort::VERSION
  s.authors     = ["Ng Guoyou"]
  s.email       = ["fauxface+github@gmail.com"]
  s.homepage    = "https://github.com/gyng/expertsort"
  s.summary     = %q{A collection of EXPERT PROGRAMMER sorting algorithms.}
  s.description = %q{Expertsort (stylised EXPERTSORT) is a collection of EXPERT PROGRAMMER sorting algorithms.
                     Ever felt that sorting in Ruby is too fast?
                     Need a slow algorithm for v0.0.1 of your application? (So you can show your boss that you, programmer extraordinaire, significantly improved performance in v0.0.2)
                     Want to prove that sorting in Ruby is slow as balls?
                     EXPERTSORT is here to help.}
  s.license     = "MIT"

  s.rubyforge_project = "expertsort"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
end
