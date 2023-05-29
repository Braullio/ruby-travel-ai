require './app/adapters/controllers/travel_controller'
require 'dotenv'
Dotenv.load


p TravelController.plan({
                          start_date: '10/08/2023',
                          end_date: '15/08/2023',
                          city_origin: 'Goiânia',
                          city_destination: 'São Paulo',
                          type: 'best_way'
                        })