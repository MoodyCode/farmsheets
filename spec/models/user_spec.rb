require 'rails_helper'

describe User do
  it { should have_many :plantings }
  it { should have_one :subscription }
end