source 'https://rubygems.org'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem 'solidus', github: 'solidusio/solidus', branch: branch

if branch == 'master' || branch >= 'v2.3'
  gem 'rails', '~> 5.1.4'
elsif branch >= 'v2.0'
  gem 'rails', '~> 5.0.6'
  gem 'rails-controller-testing', group: :test
else
  gem 'rails', '~> 4.2.7'
  gem 'rails_test_params_backport', group: :test
end

gem 'sqlite3'
gem 'pg', '~> 0.21'
gem 'mysql2', '~> 0.4.10'

group :development, :test do
  # gem 'pry-rails'
  # gem 'i18n-tasks', '~> 0.9' if branch == 'master'
end

gemspec
