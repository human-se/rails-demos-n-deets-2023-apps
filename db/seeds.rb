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

q1 = Quiz.create!(
  title:       'American History 1',
  description: 'American History 1776 - 1800'
)
q2 = Quiz.create!(
  title:       'Chemistry - Element Names',
  description: 'Names of all of the elements of the periodic table'
)
q3 = Quiz.create!(
  title:       'Math - Algebra 2',
  description: 'Completing the Square to solve equations'
)
q4 = Quiz.create!(
  title:       'English Literature 1',
  description: 'English Literature before 1850'
)
