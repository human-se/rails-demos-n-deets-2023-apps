class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :color
      t.integer :year
      t.decimal :price

      t.timestamps
    end
  end
end
