class AddVarietalIdToPlantings < ActiveRecord::Migration
  def change
    add_column :plantings, :varietal_id, :integer
  end
end
