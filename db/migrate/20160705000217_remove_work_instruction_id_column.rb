class RemoveWorkInstructionIdColumn < ActiveRecord::Migration
  def change
    remove_column :procedures, :work_instruction_ids
  end
end
