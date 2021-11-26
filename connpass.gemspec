# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'connpass/version'

Gem::Specification.new do |spec|
  spec.name          = "connpass"
  spec.version       = Connpass::VERSION
  spec.authors       = ["deeeki"]
  spec.email         = ["deeeki@gmail.com"]
  spec.description   = %q{A Ruby wrapper for the connpass API}
  spec.summary       = %q{A Ruby wrapper for the connpass API}
  spec.homepage      = "https://github.com/deeeki/connpass"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'
  spec.add_dependency "hashie"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "fakeweb"
end
