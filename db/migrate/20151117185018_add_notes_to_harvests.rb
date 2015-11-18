class AddNotesToHarvests < ActiveRecord::Migration
  def change
    add_column :harvests, :notes, :text
  end
end
