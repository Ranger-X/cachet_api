# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cachet/rb/version'
require 'rbconfig'

Gem::Specification.new do |spec|
  spec.name          = 'cachet_api'
  spec.version       = CachetClient::VERSION
  spec.authors       = ['TheFynx']
  spec.email         = ['levi@fynx.me']
  spec.required_ruby_version = '>= 2.1'

  spec.summary       = 'Ruby library wrapper for Cachet API'
  spec.description   = 'Ruby library wrapper for CachetHQ.io - Beautiful & simple service statuses - The open source status page system, for everyone'
  spec.homepage      = 'https://github.com/TheFynx/cachet_api'

  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "rest-client"
  spec.add_dependency "yard"
  spec.add_dependency "redcarpet"
end
