# frozen_string_literal: true

class AddQuizFkColToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_reference :questions, :quiz, foreign_key: true
  end
end
