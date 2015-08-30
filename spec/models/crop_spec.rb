require 'rails_helper'

describe Crop do
  it { should have_many :plantings }
  it { should have_many :varietals }
end