require 'rails_helper'

describe Measurement do
  it { should have_many :plantings }
  it { should have_many :harvests }
end