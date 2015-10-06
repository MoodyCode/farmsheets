class Account < ActiveRecord::Base
  belongs_to :user
  validates :first_name, :presence => true
  validates :last_name, :presence => true

  def process_subscription
    @amount = 500
    customer = Stripe::Customer.create(
      :email => stripeEmail,
      :card  => stripeToken,
      :plan => 232
    )
    self.stripe_customer_id = customer.id
    self.stripe_status = customer.subscriptions.data.first.status
  end
end