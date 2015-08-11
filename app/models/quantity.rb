class Quantity < ActiveRecord::Base
  has_many :harvest
  has_many :planting 
  validates :amount, :presence => true
end