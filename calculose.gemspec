# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'calculose/version'

Gem::Specification.new do |gem|
  gem.name          = "calculose"
  gem.version       = Calculose::VERSION
  gem.authors       = ["Dan Ruswick"]
  gem.email         = ["orzogen@gmail.com"]
  gem.description   = "A handful of algorithms for estimating antiderivative values."
  gem.homepage      = "http://orzogen.github.com/calculose"
  gem.summary       = "Summing algorithms."
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_development_dependency "rspec", "~> 2.6"
end
