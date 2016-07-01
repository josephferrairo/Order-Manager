class Procedure < ActiveRecord::Base
  belongs_to :user
  has_many :work_instructions, through: :user

  validates :name, presence: :true
  validates :code, presence: :true
end
