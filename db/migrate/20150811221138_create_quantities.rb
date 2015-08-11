class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.decimal :amount
    end
  end
end
