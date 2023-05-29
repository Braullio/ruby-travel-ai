# frozen_string_literal: true

require 'sinatra'
require 'dotenv'
Dotenv.load

require './app/adapters/controllers/travel_controller'

post '/plan' do
  {result: TravelController.plan(params) }.to_json
end