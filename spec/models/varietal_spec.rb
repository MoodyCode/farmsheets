require 'rails_helper'

describe Varietal do
  it { should belong_to :crop }
  it { should have_many :plantings }
end