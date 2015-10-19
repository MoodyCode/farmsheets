class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_cache_buster


  # STRIPE_CUSTOMER_ID = current_user

  def set_cache_buster
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end

private
  def account_active?
    if current_user.account.stripe_status == 'canceled'
      flash[:alert] = "Your account is currently inactive"
      redirect_to account_detail_path
    end
  end

  def account?
    if current_user.account.nil?
      flash[:alert] = "Please fill in account information and credit card information to continue"
      redirect_to new_account_path
    end
  end
end
