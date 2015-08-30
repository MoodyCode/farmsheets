class RemoveColumnVarietalIdInPlantings < ActiveRecord::Migration
  def change
    remove_column :plantings, :varietal_id
  end
end
