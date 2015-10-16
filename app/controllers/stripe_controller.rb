class StripeController < ApplicationController
  protect_from_forgery except: :webhook

  def webhook    
    event = Stripe::Event.retrieve(params[:id])
    stripe_customer_token = event.data.object.customer
    customer = Stripe::Customer.retrieve(stripe_customer_token)

    if customer.subscriptions.data.any?
      stripe_status = customer.subscriptions.data.first.status
    else
      stripe_status = "canceled"
    end

    account = Account.where(stripe_customer_id: stripe_customer_token).first
    account.update(stripe_status: stripe_status)

    render text: "success"
  end  
end