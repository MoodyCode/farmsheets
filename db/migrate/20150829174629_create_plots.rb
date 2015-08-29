class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :name
    end
  end
end
