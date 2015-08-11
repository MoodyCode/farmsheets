class CreateHarvests < ActiveRecord::Migration
  def change
    create_table :harvests do |t|
      t.date :date
      t.decimal :yield
      t.integer :quantity_id
    end
  end
end
