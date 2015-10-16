class StripeController < ApplicationController
  protect_from_forgery except: :webhook

  def webhook    
    event = Stripe::Event.retrieve(params[:id])
    stripe_event = event.data.object
    customer = Stripe::Customer.retrieve(stripe_event.customer)
    subscription = customer.subscriptions.retrieve(stripe_event.id)
    stripe_status = subscription.status
    # stripe_status = event.data.object.status

    account = Account.where(stripe_customer_id: customer).first
    account.update(stripe_status: stripe_status)

    render text: "success"
  end  
end