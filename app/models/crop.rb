class Crop < ActiveRecord::Base
  has_many :plantings
  has_many :varietals

  accepts_nested_attributes_for :varietals, :plantings
end