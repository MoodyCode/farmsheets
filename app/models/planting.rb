class Planting < ActiveRecord::Base
  has_one :harvest
  belongs_to :user
  belongs_to :crop
  belongs_to :measurement
  belongs_to :plot
  belongs_to :varietal

end