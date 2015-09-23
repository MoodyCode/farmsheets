class Harvest < ActiveRecord::Base
  belongs_to :planting
  belongs_to :measurement

  validates :yield, :presence => true
  validates :date, :presence => true
end