class Varietal < ActiveRecord::Base
  belongs_to :crop
  has_many :plantings
end