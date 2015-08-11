class Planting < ActiveRecord::Base
  validates :crop, :presence => true
  validates :variety, :presence => true
  validates :seed, :presence => true
end