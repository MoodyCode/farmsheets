require 'rails_helper'

describe Plan do 
  it { should have_many :subscriptions }
  # it { should validate_presence_of :name }
  # it { should validate_presence_of :price }
  # it { should validate_presence_of :paypal_description }
  # it { should validate_presence_of :description }
end