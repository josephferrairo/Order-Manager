class Customer < ActiveRecord::Base
  validates :name, presence: true
  validates :customercode, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true, numericality: { only_integer: true, greater_than: 0 }

end
