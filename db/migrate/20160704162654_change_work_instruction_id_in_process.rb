class ChangeWorkInstructionIdInProcess < ActiveRecord::Migration
  def change
    remove_column :procedures, :work_instruction_id, :integer
    add_column :procedures, :work_instruction_ids, :text
  end
end
