class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :account?, except: :new

  def new
    @user = current_user
    @account = @user.build_account
  end

  def create
    @user = current_user
    @account = @user.build_account account_params.merge(stripeEmail: stripe_params['stripeEmail'], 
                                                        stripeToken: stripe_params['stripeToken'], 
                                                        stripeTokenType: stripe_params['stripeTokenType'])
    raise "Please, check account errors" unless @account.valid?
    @account.process_subscription
    if @account.save
      redirect_to :root
    else
      render :new
    end

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to accounts_path
  end

  def index
    @user = current_user
    @account = @user.account
    customer = Stripe::Customer.retrieve(@account.stripe_customer_id)
    @card = customer.sources.retrieve(customer.sources.data[0].id)
    @stripe = customer.subscriptions.data[0]
  end

private
  def account_params
    params.require(:account).permit(:first_name, :last_name, :user_id)
  end

  def stripe_params
    params.permit(:stripeEmail, :stripeToken, :stripeTokenType)
  end
end