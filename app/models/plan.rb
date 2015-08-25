class Plan < ActiveRecord::Base
  has_many :subscriptions
  validates :name, :presence => true
  validates :price, :presence => true
  validates :paypal_description, :presence => true, length: { maximum: 120 }
  validates :description, :presence => true

  def paypal_description=(value)
    write_attribute(:paypal_description, I18n.transliterate(value))
  end

  def to_s
    name
  end

end