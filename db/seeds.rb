# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Car.create!(
  make:  'Dodge',
  model: 'Viper',
  color: 'Blue',
  year:  1994,
  price: 30_700.70
)

Car.create!(
  make:  'Chevy',
  model: 'Equinox',
  color: 'Gold',
  year:  2015,
  price: 8327.99
)

Car.create!(
  make:  'Tesla',
  model: 'Model X',
  color: 'Black',
  year:  2020,
  price: 77_641.00
)
