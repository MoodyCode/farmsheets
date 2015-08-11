require 'rails_helper'

describe Harvest do
  it { should validate_presence_of :date }
  it { should validate_presence_of :yield }
end