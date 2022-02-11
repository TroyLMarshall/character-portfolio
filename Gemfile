# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 6.0.0"

# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"

# Use Puma as the app server
gem "puma", "~> 4.3"

# Use SCSS for stylesheets
gem "sass-rails", "~> 5"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker

gem "webpacker", "~> 4.0"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks

gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder

gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Active Model has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use Active Storage variant
# gem "image_processing", "~> 1.2"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

# Use Devise for authentication. Read more: https://github.com/plataformatec/devise
gem "devise", "~> 4.7.1"

group :development do
  # Add bullet get to identify N+1 queries. Read more: https://github.com/flyerhzm/bullet
  gem "bullet", "~> 6.0.2"

  # Add guard to automate tasks. Read more: https://github.com/guard/guard
  gem "guard", "~> 2.16.1"

  # Add brakeman plugin. Read more: https://github.com/guard/guard-brakeman
  gem "guard-brakeman", "~> 0.8.5"

  # Add bundler plugin. Read more: https://github.com/guard/guard-bundler
  gem "guard-bundler", "~> 2.2.1", require: false

  # Add rspec plugin. Read more: https://github.com/guard/guard-rspec
  gem "guard-rspec", "~> 4.7.3", require: false

  # Add rubocop plugin. Read more: https://github.com/yujinakayama/guard-rubocop
  gem "guard-rubocop", "~> 1.3.0"

  # Add rubycritic plugin. Read more: https://github.com/whitesmith/guard-rubycritic
  gem "guard-rubycritic", "~> 2.9.3"

  # Add Yard plugin. Read more: https://github.com/panthomakos/guard-yard
  gem "guard-yard", "~> 2.2.1"

  # Debug i18n translations. Read more: https://github.com/fphilipe/i18n-debug
  gem "i18n-debug", "~> 1.2.0"

  # Use RubyCritic for code quality reporting. Read more: https://github.com/whitesmith/rubycritic
  gem "rubycritic", "~> 4.2.1", require: false
end

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  # gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "byebug", platforms: %i[mri mingw x64_mingw]

  # Use RSpec for testing. Read more: https://relishapp.com/rspec/rspec-rails/docs
  gem "rspec-rails", "~> 3.8.3"

  # Use factory_bot_rails as a fixture replacement. Read more: https://github.com/thoughtbot/factory_bot_rails
  gem "factory_bot_rails", "~> 5.1.1"

  # Use Faker to generate random data for tests. Read more: https://github.com/stympy/faker
  gem "faker", "~> 2.6.0"

  # Use SimpleCov to evaluate test coverage of code. Read more: https://github.com/colszowka/simplecov
  gem "simplecov", "~> 0.17.1", require: false
end

group :development do
  # Access an interactive console on exception pages or by calling "console" anywhere in the code.
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console", ">= 3.3.0"

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"

  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
