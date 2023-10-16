source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.8"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 6.0.0'
  gem 'capybara'
end

group :development do
  gem "web-console"
  gem "rails_live_reload"
end


gem "tailwindcss-rails", "~> 2.0"

gem "dockerfile-rails", "~> 1.5"

gem "sentry-ruby", "~> 5.12"

gem "sentry-rails", "~> 5.12"

gem "selenium-webdriver", "~> 4.14"
