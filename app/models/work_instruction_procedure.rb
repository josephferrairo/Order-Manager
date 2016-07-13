class WorkInstructionProcedure < ActiveRecord::Base
  attr_accessible :work_instruction_id, :procedure_id

  belongs_to :work_instruction
  belongs_to :procedure
end
