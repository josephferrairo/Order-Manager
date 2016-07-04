class Procedure < ActiveRecord::Base
  belongs_to :user
  has_many :work_instructions, through: :user
  serialize(:work_instruction_ids, Array)

  validates :name, presence: :true
  validates :code, presence: :true

  accepts_nested_attributes_for :work_instructions
end
