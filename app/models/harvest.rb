class Harvest < ActiveRecord::Base
  validates :date, :presence => true
  validates :yield, :presence => true
end