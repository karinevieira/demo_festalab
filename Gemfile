# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.2.2"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# validate and format CPF/CNPJ [https://github.com/fnando/cpf_cnpj]
gem "cpf_cnpj", "0.5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# For phone validation and formatting using google libphonenumber library data [https://github.com/daddyz/phonelib]
gem "phonelib", "0.8.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.0"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Composable service objects [https://github.com/sunny/actor]
gem "service_actor", "3.7.0"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Utility-first CSS framework that can be composed to build any design, directly in your markup [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails", "2.0.30"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri windows]

  # To help fixture creation [https://github.com/thoughtbot/factory_bot_rails]
  gem "factory_bot_rails", "6.2.0"

  # Provides RSpec-compatible one-liners to test common Rails functionality [https://github.com/thoughtbot/shoulda-matchers]
  gem "shoulda-matchers", "5.3.0"
end

group :development do
  # To ensure code consistency [https://docs.rubocop.org]
  gem "rubocop", "1.56.4"
  gem "rubocop-performance", "1.19.1"
  gem "rubocop-rails", "2.21.2"
  gem "rubocop-rspec", "2.24.1"

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Framework library to test our code [https://github.com/rspec/rspec-rails/]
  gem "rspec-rails", "6.0.3"
end
