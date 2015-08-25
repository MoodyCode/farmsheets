class AddUserColumnToPlantings < ActiveRecord::Migration
  def change
    add_column :plantings, :user_id, :integer
  end
end
