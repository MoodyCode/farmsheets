class Harvest < ActiveRecord::Base
  belongs_to :planting
  belongs_to :measurement

  validates :date, :presence => true
  validates :yield, :presence => true
end