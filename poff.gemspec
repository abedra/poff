# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poff/version'

Gem::Specification.new do |spec|
  spec.name          = "poff"
  spec.version       = Poff::VERSION
  spec.authors       = ["Aaron Bedra"]
  spec.email         = ["aaron@aaronbedra.com"]
  spec.description   = %q{Plain Old Feature Flags}
  spec.summary       = %q{A Gem to do static feature flag management}
  spec.homepage      = "https://github.com/abedra/poff"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("activesupport", ">= 3.0")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
