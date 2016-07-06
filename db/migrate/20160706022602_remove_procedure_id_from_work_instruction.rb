class RemoveProcedureIdFromWorkInstruction < ActiveRecord::Migration
  def change
    remove_column :work_instructions, :procedure_id, :integer
  end
end
