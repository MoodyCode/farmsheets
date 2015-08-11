class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :plot
    end
  end
end
