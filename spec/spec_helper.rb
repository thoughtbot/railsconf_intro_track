ENV['RAILS_ENV'] = 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'bourne'
require 'rspec/rails'
require 'webmock/rspec'

Dir[Rails.root.join('spec/support/**/*.rb')].each { |file| require file }

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:each) do
    Delayed::Worker.delay_jobs = true
  end

  config.mock_with :mocha
  config.include FactoryGirl::Syntax::Default
  config.use_transactional_fixtures = true
  config.order = 'random'
end
