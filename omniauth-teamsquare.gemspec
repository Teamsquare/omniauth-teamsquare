# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-teamsquare/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Michael Shimmins']
  gem.email         = ['michael@teamsquare.co']
  gem.description   = %q{OmniAuth strategy for Teamsquare.}
  gem.summary       = %q{OmniAuth strategy for Teamsquare.}
  gem.homepage      = 'https://github.com/teamsquare/omniauth-teamsquare'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-teamsquare'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::Teamsquare::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
end
