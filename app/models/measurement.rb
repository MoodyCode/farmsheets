class Measurement < ActiveRecord::Base
  has_many :plantings
  has_many :harvests
end