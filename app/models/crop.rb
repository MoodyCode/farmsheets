class Crop < ActiveRecord::Base
  has_many :plantings
  has_many :varietals
  before_validation :downcase_fields

  validates :name, :presence => true
  validates_uniqueness_of :name

private
  def downcase_fields
    self.name.downcase!
  end
end
