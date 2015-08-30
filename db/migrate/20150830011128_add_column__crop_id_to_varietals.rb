class AddColumnCropIdToVarietals < ActiveRecord::Migration
  def change
    add_column :varietals, :crop_id, :integer
  end
end
