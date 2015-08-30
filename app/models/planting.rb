class Planting < ActiveRecord::Base
  has_one :harvest
  belongs_to :user
  belongs_to :crop
  belongs_to :measurement
  belongs_to :plot

  # attr_accessible :name, :crops_attributes

  # accepts_nested_attributes_for :crops
end