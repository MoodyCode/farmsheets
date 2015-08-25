class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :paypay_payer_id
      t.string :paypal_profile_id
      t.datetime :paid_until
      t.boolean :canceled
      t.integer :plan_id

      t.timestamps
    end
  end
end
