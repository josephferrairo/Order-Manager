class AddProcedureIdToWorkInstructions < ActiveRecord::Migration
  def change
    add_column :work_instructions, :procedure_id, :integer
  end
end
