require 'rails_helper'

describe Planting do
  it { should have_one :harvest }
  it { should belong_to :plot }
  it { should belong_to :measurement }
  it { should belong_to :user }
  it { should belong_to :varietal }
  it { should belong_to :crop }
end