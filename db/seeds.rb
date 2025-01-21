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

user1 = User.create!(
  email:    'bob@email.com',
  password: 'password'
)

user2 = User.create!(
  email:    'alice@email.com',
  password: 'password'
)

# Quiz 1
quiz1 = Quiz.create!(
  title:       'American History 1',
  description: 'American History 1776 - 1800'
)

quiz1_q1 = Question.create!(
  stem:         'What city was the first capital of the United States?',
  answer:       'New York City',
  distractor_1: 'Washington, D.C.',
  distractor_2: 'Boston',
  quiz:         quiz1
)
quiz1_q2 = Question.create!(
  stem:         'Who first discovered America?',
  answer:       'Leif Erikson',
  distractor_1: 'Christopher Columbus',
  distractor_2: 'The Pilgrims',
  quiz:         quiz1
)
quiz1_q3 = Question.create!(
  stem:         'When was the Declaration of Independence signed?',
  answer:       'August 2nd, 1776',
  distractor_1: 'July 4, 1776',
  distractor_2: 'September 3, 1783',
  quiz:         quiz1
)
# Quiz 2
quiz2 = Quiz.create!(
  title:       'Chemistry - Element Names',
  description: 'Names of all of the elements of the periodic table'
)

# Quiz 3
quiz3 = Quiz.create!(
  title:       'Math - Algebra 2',
  description: 'Completing the Square to solve equations'
)
