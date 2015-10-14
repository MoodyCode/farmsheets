class Planting < ActiveRecord::Base
  has_one :harvest
  belongs_to :user
  belongs_to :crop
  belongs_to :measurement
  belongs_to :plot
  belongs_to :varietal

  validates :crop_id, :presence => true
  validates :date, :presence => true
  validates :quantity, :presence => true
  validates :varietal_id, :presence => true

end