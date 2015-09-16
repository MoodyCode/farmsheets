class Crop < ActiveRecord::Base
  has_many :plantings
  has_many :varietals
end