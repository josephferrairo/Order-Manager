class Customer < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :customercode, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true, length: { is: 2 }
  validates :zipcode, presence: true, length: { is: 5 }

end
