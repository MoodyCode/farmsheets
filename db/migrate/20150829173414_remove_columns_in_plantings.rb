class RemoveColumnsInPlantings < ActiveRecord::Migration
  def change
    remove_column :plantings, :size_id
    remove_column :plantings, :crop
    remove_column :plantings, :variety
    remove_column :plantings, :seed
    remove_column :plantings, :quantity_id
  end
end
