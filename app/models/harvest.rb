class Harvest < ActiveRecord::Base
  belongs_to :planting
  belongs_to :measurement
end