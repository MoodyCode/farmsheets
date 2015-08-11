class Size < ActiveRecord::Base
  has_many :plantings

  validates :plot, :presence => true
end