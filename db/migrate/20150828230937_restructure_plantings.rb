class RestructurePlantings < ActiveRecord::Migration
  def up
    add_column :plantings, :crop_id, :integer
    add_column :plantings, :varietal_id, :integer
    add_column :plantings, :quantity, :decimal
    add_column :plantings, :measurement_id, :integer
    add_column :plantings, :plot_id, :integer
  end

  def down
    remove_column :plantings, :size_id
    remove_column :plantings, :crop
    remove_column :plantings, :variety
    remove_column :plantings, :seed
    remove_column :plantings, :quantity_id
  end
end
