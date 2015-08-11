class AddPlantingIdToHarvests < ActiveRecord::Migration
  def change
    add_column :harvests, :planting_id, :integer
  end
end
