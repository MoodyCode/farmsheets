class Subscription < ActiveRecord::Base
  attr_accessor :paypal_payment_token
  
  belongs_to :plan
  
  validates :paypal_payer_id, :presence => true
  validates :paypal_profile_id, :presence => true
  validates :paid_until, :presence => true
  validates :canceled, :presence => true

  delegate :price, :paypal_description, to: :plan

  def cancel!
    update(cancel: true)
  end

  def paid?
    return false if paid_until.blank?
    paid_until >= Time.current
  end
end