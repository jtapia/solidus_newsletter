# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'solidus_newsletter/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'solidus_newsletter'
  s.version     = SolidusNewsletter::VERSION
  s.author      = 'Jonathan Tapia'
  s.email       = 'jonathan.tapia@magmalabs.io'
  s.homepage    = 'https://github.com/jtapia/solidus_newsletter'
  s.summary     = 'Solidus Newsletter extension'
  s.description = 'Adds a newsletter form to the homepage'

  # s.files = Dir['{app,config,models,db,lib}/**/*'] + %w(MIT-LICENSE Rakefile README.md)
  s.files         = `git ls-files`.split("\n")
  s.require_path  = 'lib'
  s.requirements << 'none'

  solidus_version = ['>= 1.0', '< 3']
  s.add_dependency 'solidus_core', solidus_version
  s.add_dependency 'solidus_support'

  s.add_development_dependency 'database_cleaner', '~> 1.6'
  s.add_development_dependency 'factory_bot', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails', '~> 3.3'
  s.add_development_dependency 'simplecov', '~> 0.14'
  s.add_development_dependency 'rspec-activemodel-mocks'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'byebug'
end

