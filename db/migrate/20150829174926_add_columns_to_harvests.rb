class AddColumnsToHarvests < ActiveRecord::Migration
  def change
    add_column :harvests, :measurement_id, :integer
  end
end
