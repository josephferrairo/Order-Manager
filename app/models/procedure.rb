class Procedure < ActiveRecord::Base
  attr_accessible :name

  belongs_to :user

  valdates :name, :presence => true

  has_many :work_instruction_procedures
  has_many :work_instructions, :through => :work_instruction_procedures

end
