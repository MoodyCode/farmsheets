require 'rails_helper'

describe Harvest do
  it { should belong_to :planting }
  it { should belong_to :measurement }

  it { should validate_presence_of :date }
  it { should validate_presence_of :yield }
end