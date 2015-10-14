require 'rails_helper'

describe Planting do
  it { should have_one :harvest }
  it { should belong_to :plot }
  it { should belong_to :measurement }
  it { should belong_to :user }
  it { should belong_to :crop }
  it { should belong_to :varietal }

  it { should validate_presence_of :crop_id }
  it { should validate_presence_of :date }
  it { should validate_presence_of :quantity }
  it { should validate_presence_of :varietal_id }
end