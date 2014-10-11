# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'how_much_is_the_fish/version'

Gem::Specification.new do |spec|
  spec.name          = "how_much_is_the_fish"
  spec.version       = HowMuchIsTheFish::VERSION
  spec.authors       = ["Ivan Malykh"]
  spec.email         = ["ivan@lesslines.com"]
  spec.summary       = %q{Ruby client wrapper around howmuchisthe.fish api}
  spec.description   = %q{Ruby client that wraps around howmuchisthe.fish api. Bringing all the goodness of Scooter lyrics to you.}
  spec.homepage      = "http://howmuchisthe.fish"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",          "~> 1.7"
  spec.add_development_dependency "rake",             "~> 10.0"
  spec.add_development_dependency "rspec",            "~> 3.0.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "guard-rspec"
end
