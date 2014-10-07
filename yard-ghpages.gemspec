# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yard-ghpages/version'

Gem::Specification.new do |gem|
  gem.name          = 'yard-ghpages'
  gem.version       = Yard::GHPages::VERSION
  gem.authors       = ['Tyler Rhodes']
  gem.email         = %w(tyler.s.rhodes@gmail.com)
  gem.summary       = %q{Allows for yard docs to be generated and pushed up to gh-pages for easy access on github.}
  gem.description   = %q{Publishes yard docs to github pages}
  gem.homepage      = "http://tylerrhodes.github.io/yard-ghpages"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = %w(lib)

  gem.add_dependency('rake')
  gem.add_dependency('yard')
  gem.add_dependency('git', '~> 1.2.5')

  gem.add_development_dependency('debugger')
  gem.add_development_dependency('redcarpet')
end
