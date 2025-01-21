# frozen_string_literal: true

class AddUserFkColToQuizzes < ActiveRecord::Migration[7.1]
  def change
    add_reference :quizzes, :user, foreign_key: true
  end
end
