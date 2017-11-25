source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.2'
gem 'rails', '~> 5.1.4'
# Rails defaults
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem "haml-rails"
gem 'rainbow'
gem 'simple_form'
#gem "activerecord-tableless"

group :development, :test do
  #Byebug is a simple to use, feature rich debugger for Ruby.
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  #Capybara is an integration testing tool for rack based web applications.
  #It simulates how a user would interact with a website
  gem 'capybara', '~> 2.13'
  # WebDriver is a tool for writing automated tests of websites.
  gem 'selenium-webdriver'
end
group :development do
  # debugging tool for your Ruby on Rails applications.
  gem 'web-console', '>= 3.3.0'
  # The Listen gem listens to file modifications
  # and notifies you about the changes.
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Preloads your application so things like console, rake and tests run faster
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# learn-rails
gem "figaro"
gem 'foundation-rails', '~> 5.5'
# A wrapper for MailChimp API 3.0 and Export API
gem 'gibbon'
# Easily include static pages in your Rails app.
#gem "figaro"
gem 'high_voltage'
gem 'jquery-rails'
group :development do
  # Provides a better error page for Rails and other Rack apps.
  gem 'better_errors'
  gem "binding_of_caller"
  # Generates Rails application layout files for use with various front-end frameworks.
  gem 'rails_layout'
end
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end
group :test do
  gem 'minitest-spec-rails'
end
