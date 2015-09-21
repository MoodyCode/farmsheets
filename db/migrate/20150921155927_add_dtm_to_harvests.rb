class AddDtmToHarvests < ActiveRecord::Migration
  def change
    add_column :harvests, :dtm, :integer
  end
end
