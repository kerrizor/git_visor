# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_visor/version'

Gem::Specification.new do |spec|
  spec.name          = "git_visor"
  spec.version       = GitVisor::VERSION
  spec.authors       = ["Kerri Miller"]
  spec.email         = ["kerrizor@kerrizor.com"]
  spec.summary       = %q{git_visor creates visualizations based on git repo logs.}
  spec.description   = %q{git_visor creates visualizations based on git repo logs.}
  spec.homepage      = "https://github.com/kerrizor/git_visor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
