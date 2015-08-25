require 'rails_helper'

describe Planting do
  it { should have_one :harvest }
  it { should belong_to :quantity }
  it { should belong_to :size }
  it { should belong_to :user }

  it { should validate_presence_of :crop }
  it { should validate_presence_of :variety }
  it { should validate_presence_of :seed }
end