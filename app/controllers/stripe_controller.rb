class StripeController < ApplicationController
  protect_from_forgery except: :webhook

  SUBSCRIPTION_PAYMENT_FAILED = "invoice.payment_failed"
  STRIPE_STATUS_CHANGE = ""

  def webhook    
    # StripeLogger.info "Received event with ID: #{params[:id]} Type: #{params[:type]}"

    event = Stripe::Event.retrieve(params[:id])
    stripe_customer_token = event.data.object.customer
    stripe_status = event.data.object.status
    
    account = Account.where(stripe_customer_id: stripe_customer_token).first
    account.update(stripe_status: stripe_status)

    # if event.type == SUBSCRIPTION_PAYMENT_FAILED
    #   stripe_customer_token = event.data.object.customer
    #   account = Account.where(stripe_customer_id: stripe_customer_token).first
    # else
    #   StripeLogger.info "Webhook received params.inspect. Did not handle this event."  
    # end  

    render text: "success"
  end  
end