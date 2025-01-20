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

Todo.create!(
  title:       'Prepare Q1 2026 Presentation',
  description: 'Presentation on quarterly profits for 2026',
  due_date:    Date.new(2026, 4, 18)
)

Todo.create!(
  title:       'Jimmy Jr. Soccer Game',
  description: 'Jimmy Jr. has a soccer game against the Rivertown Raviolis. If I miss it he\'ll be sad.',
  due_date:    Date.new(2025, 11, 2)
)

Todo.create!(
  title:       'Take the Dog to the Vet',
  description: 'Newton has a checkup at the vet',
  due_date:    Date.new(2025, 11, 5)
)

Todo.create!(
  title:       'Defuse Bomb',
  description: 'There is a bomb taped to the underside of my car. I should figure out how to disarm that.',
  due_date:    Date.new(2026, 3, 14)
)

Todo.create!(
  title:       'Fix Sink',
  description: 'Someone clogged the sink. Not pointing fingers. Brian.',
  due_date:    Date.new(2026, 1, 3)
)

Todo.create!(
  title:       'Delouse the House',
  description: 'There are so many lice. Why are there so many lice? My god help me there are so many.',
  due_date:    Date.new(2026, 2, 16)
)

Todo.create!(
  title:       'De-Snake Boot',
  description: 'There\'s a snake in my boot!',
  due_date:    Date.new(2026, 4, 22)
)

Todo.create!(
  title:       'The Claw',
  description: 'I have been chosen. Farewell my friends! I go on to a better place!',
  due_date:    Date.new(2027, 6, 24)
)

Todo.create!(
  title:       'Visit Duckburg',
  description: 'There\'s racecars, lasers, aeroplanes! It\'s a duck blur!',
  due_date:    Date.new(2027, 5, 5)
)

Todo.create!(
  title:       'Rescue the Princess',
  description: 'There\'s a princess in a tower. Why is she in a tower? Why can\'t she get down???',
  due_date:    Date.new(2026, 1, 14)
)
