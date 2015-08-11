class CreatePlantings < ActiveRecord::Migration
  def change
    create_table :plantings do |t|
      t.date :date
      t.integer :size_id
      t.string :crop
      t.string :variety
      t.integer :seed
      t.integer :quantity_id
      t.text :notes

      t.timestamps
    end
  end
end
