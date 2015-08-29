require 'rails_helper'

describe Subscription do 
  it { should belong_to :plan }
  # it { should validate_presence_of :paypal_payer_id }
  # it { should validate_presence_of :paypal_profile_id }
  # it { should validate_presence_of :paid_until }
  # it { should validate_presence_of :canceled }
end