# frozen_string_literal: true

require_relative 'lib/solidus_newsletter/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_newsletter'
  s.version     = SolidusNewsletter::VERSION
  s.author      = 'Jonathan Tapia'
  s.email       = 'jonathan.tapia@magmalabs.io'
  s.homepage    = 'https://github.com/jtapia/solidus_newsletter'
  s.summary     = 'Solidus Newsletter extension'
  s.description = 'Adds a newsletter form to the homepage'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path  = 'lib'
  s.requirements << 'none'

  if s.respond_to?(:metadata)
    s.metadata['homepage_uri'] = s.homepage
    s.metadata['source_code_uri'] = 'https://github.com/jtapia/solidus_newsletter'
    s.metadata['rubygems_mfa_required'] = 'true'
  end

  s.required_ruby_version = Gem::Requirement.new('>= 2.5')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  files = Dir.chdir(__dir__) { `git ls-files -z`.split("\x0") }

  solidus_version = ['>= 2.5', '< 4']

  s.add_dependency 'solidus_core', solidus_version
  s.add_dependency 'solidus_support', '~> 0.5'

  s.add_development_dependency 'solidus_backend', solidus_version
  s.add_development_dependency 'solidus_dev_support', '~> 2.5'
  s.add_development_dependency 'solidus_frontend', solidus_version
end
