require 'rspec'
require 'dotenv'
require 'httparty'
require_relative '../lib/weatherapi.rb'

RSpec.configure do |config|
    config.formatter = :documentation
end

