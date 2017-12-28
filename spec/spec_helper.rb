require 'rspec'

require 'capybara/rspec' 
require 'webmock'
require 'test_helpers'
require 'pry'

ENV['RACK_ENV'] = 'test'

WebMock.disable_net_connect!(allow_localhost: true)

require File.expand_path '../../app.rb', __FILE__

module RSpecMixin
  def app() Sinatra::Application end
end

RSpec.configure do |config|
	config.include TestHelpers
	config.include RSpecMixin
	Capybara.app = Sinatra::Application
end
