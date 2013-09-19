# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/request_decompressor/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-request_decompressor"
  spec.version       = Rack::RequestDecompressor::VERSION
  spec.authors       = ["TADA Tadashi"]
  spec.email         = ["t@tdtds.jp"]
  spec.description   = %q{decompressing request body}
  spec.summary       = %q{a rack middleware to decompress request body by gzip or deflate}
  spec.homepage      = "https://github.com/tdtds/rack-request_decompressor"
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
