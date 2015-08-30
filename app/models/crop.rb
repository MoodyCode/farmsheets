class Crop < ActiveRecord::Base
  has_many :plantings
  has_many :varietals

  # attr_accessible :name, :varietals_attributes

  # accepts_nested_attributes_for :varietals
end