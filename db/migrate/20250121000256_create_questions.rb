class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :stem
      t.string :answer
      t.string :distractor_1
      t.string :distractor_2

      t.timestamps
    end
  end
end
