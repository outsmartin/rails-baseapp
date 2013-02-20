#source "http://bundler-api.herokuapp.com"
source 'https://rubygems.org'

def linux_only(g)
  gem g, require: RUBY_PLATFORM.include?("linux") && g
end

gem 'rails', '~> 3.2.11'


gem 'sqlite3'
gem "simple_form"
gem 'bootstrap-will_paginate'  # pagination
gem "thin"

gem "browser"
gem "bcrypt-ruby"
gem "sitemap_generator"

gem "thin"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass-rails'
  gem "font-awesome-rails"
  gem "compass-rails"
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'chosen-rails'
end

gem 'jquery-rails'

gem "sass"
gem "haml-rails"

group :test do
  gem "rspec-rails"
  gem "guard-rspec"
  linux_only "rb-inotify"
  gem "webmock"
  gem "timecop"
  gem 'capybara' #, :git => 'git://github.com/jnicklas/capybara.git'
  gem "poltergeist"
  gem "capybara-mechanize"
end


group :development do
  gem 'fontsquirrel-download'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'sextant'
end

group :development, :test do
  gem "pry-rails"
  # gem "spork-rails"
end



