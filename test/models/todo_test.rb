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
require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'fixtures must be valid' do
    todos.each do |todo|
      assert todo.valid?, todo.errors.full_messages.inspect
    end
  end

  test 'title must be present' do
    todo = todos(:one)
    todo.title = ''
    assert_not todo.valid?
  end

  test 'due date must be present' do
    todo = todos(:one)
    todo.due_date = nil
    assert_not todo.valid?
  end

  test 'due date cannot be in the past' do
    todo = todos(:one)
    todo.due_date = Date.yesterday
    assert_not todo.valid?
  end
  test 'due date can be in the future' do
    todo = todos(:one)
    todo.due_date = Date.tomorrow
    assert todo.valid?
  end
end
