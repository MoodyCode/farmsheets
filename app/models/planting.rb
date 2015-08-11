class Planting < ActiveRecord::Base
  has_one :harvest
  belongs_to :quantity
  belongs_to :size

  validates :crop, :presence => true
  validates :variety, :presence => true
  validates :seed, :presence => true
end