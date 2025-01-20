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

BasketballPlayer.create!(
  first_name:    'D.J.',
  last_name:     'Jeffries',
  position:      'Forward',
  height_inches: 79,
  weight_lbs:    215
)

BasketballPlayer.create!(
  first_name:    'Deandre',
  last_name:     'Williams',
  position:      'Forward',
  height_inches: 81,
  weight_lbs:    190
)

BasketballPlayer.create!(
  first_name:    'Moussa',
  last_name:     'Cisse',
  position:      'Center',
  height_inches: 82,
  weight_lbs:    220
)

BasketballPlayer.create!(
  first_name:    'Landers',
  last_name:     'Nolley II',
  position:      'Guard',
  height_inches: 79,
  weight_lbs:    220
)

BasketballPlayer.create!(
  first_name:    'Lester',
  last_name:     'Quinones',
  position:      'Guard',
  height_inches: 77,
  weight_lbs:    205
)
