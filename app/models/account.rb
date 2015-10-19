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

  def cancel_subscription
    customer = Stripe::Customer.retrieve(stripe_customer_id)
    customer.subscriptions.retrieve(customer.subscriptions.data.first.id).delete(:at_period_end => true)
  end

  def reactivate_subscription
    customer = Stripe::Customer.retrieve(stripe_customer_id)
    subscription = customer.subscriptions.retrieve(customer.subscriptions.data.first.id)
    subscription.plan = "232"
    subscription.save
  end

  def subscribe
    customer = Stripe::Customer.retrieve(stripe_customer_id)
    customer.subscriptions.create(:plan => "232", :trial_end => Time.now.to_i)
  end
end