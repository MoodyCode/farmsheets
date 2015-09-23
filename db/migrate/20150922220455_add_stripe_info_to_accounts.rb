class AddStripeInfoToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :stripeToken, :string
    add_column :accounts, :stripeTokenType, :string
    add_column :accounts, :stripeEmail, :string
  end
end
