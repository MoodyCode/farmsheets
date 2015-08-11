require 'rails_helper'

describe Size do
  it { should have_many :plantings }
  it { should validate_presence_of :plot }
end