class WorkInstruction < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :workcode, presence: true, length: { maximum: 4 }
  validates :workcode, uniqueness: { case_sensitive: false }
  validates :description, presence: true
end
