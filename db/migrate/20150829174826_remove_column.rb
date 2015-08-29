class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :harvests, :quantity_id
  end
end
