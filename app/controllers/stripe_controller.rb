class StripeController < ApplicationController
  protect_from_forgery except: :webhook

  def webhook    
    event = Stripe::Event.retrieve(params[:id])
    stripe_customer_token = event.data.object.customer
    subscription = customer.subscriptions.retrieve(stripe_customer_token)
    stripe_status = subscription.status
    # stripe_status = event.data.object.status

    account = Account.where(stripe_customer_id: stripe_customer_token).first
    account.update(stripe_status: stripe_status)

    render text: "success"
  end  
end