require 'rails_helper'

describe Quantity do
  it { should have_many :planting }
  it { should have_many :harvest }

  it { should validate_presence_of :amount }
end