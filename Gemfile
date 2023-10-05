# frozen_string_literal: true
source "https://rubygems.org"

group :development, :test do
  gem "rake"
  gem "pry" # Easily debug from your console with `binding.pry`
  gem "pry-byebug", platform: :mri # Step-by-step debugging

  gem "cancancan"
  gem "pundit"
  gem "jruby-openssl", platform: :jruby

  gem "draper"
  gem "devise", ">= 4.8.1"

  gem "rails", "~> 7.1.0"
  gem "activerecord-jdbcsqlite3-adapter", platform: :jruby

  gem "sprockets-rails", ">= 3.3.0"
  gem "sassc-rails"
end

group :test do
  gem "cuprite"
  gem "capybara"
  gem "webrick"
  gem "db-query-matchers"

  gem "simplecov", require: false # Test coverage generator. Go to /coverage/ after running tests
  gem "cucumber-rails", ">= 2.5.0", require: false
  gem "cucumber"
  gem "database_cleaner"
  gem "jasmine"
  gem "jasmine-core"
  gem "launchy"
  gem "parallel_tests"
  gem "rails-i18n" , ">= 7.0.1" # Provides default i18n for many languages
  gem "rspec-rails", ">= 5.0.3"
  gem "sqlite3", platform: :mri
end

group :release do
  gem "chandler" # Github releases from changelog
  gem "octokit"
end

group :lint do
  # Code style
  gem "rubocop"
  gem "rubocop-packaging"
  gem "rubocop-rspec"
  gem "rubocop-rails"
  gem "mdl"

  # Translations
  gem "i18n-tasks", ">= 0.9.36"
  gem "i18n-spec"
end

group :docs do
  gem "yard" # Documentation generator
  gem "kramdown" # Markdown implementation (for yard)
end

gemspec path: "."
