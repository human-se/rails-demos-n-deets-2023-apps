class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.date :dob
      t.string :empid
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
