class DropQuantities < ActiveRecord::Migration
  def change
    drop_table :quantities
  end
end
