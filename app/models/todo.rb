# frozen_string_literal: true

# == Schema Information
#
# Table name: todos
#
#  id          :bigint           not null, primary key
#  description :text
#  due_date    :date
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Todo < ApplicationRecord
  validates :title, presence: true
  validates :due_date, presence: true
  validates :due_date, comparison: { greater_than_or_equal_to: proc { Date.today } }
end
