require 'rails_helper'

describe Planting do
  it { should validate_presence_of :crop }
  it { should validate_presence_of :variety }
  it { should validate_presence_of :seed }
end