ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

silence_warnings do
  require "bcrypt"
  BCrypt::Engine::DEFAULT_COST = BCrypt::Engine::MIN_COST
end


Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
  config.tty = true

  config.before(:each) do
    ActionMailer::Base.deliveries = []
  end
end
