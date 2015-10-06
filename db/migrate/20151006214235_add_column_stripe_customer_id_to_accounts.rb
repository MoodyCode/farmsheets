class AddColumnStripeCustomerIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :stripe_customer_id, :string
    add_column :accounts, :stripe_status, :string
  end
end
