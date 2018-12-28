class CreateFees < ActiveRecord::Migration[5.2]
  def change
    create_table :fees do |t|
      t.date :month
      t.integer :people_number
      t.integer :electricity
      t.integer :gas
      t.integer :water

      t.timestamps
    end
  end
end
