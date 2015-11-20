require 'rails_helper'

describe Crop do
  it { should have_many :plantings }
  it { should have_many :varietals }

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  it 'downcases crop before save' do
    crop = Crop.new(:name => 'Apple')
    crop.save!
    expect(crop.name).to eq 'apple'
  end
end
