class ChangeWorkInstructinoIdToArray < ActiveRecord::Migration
  def change
    remove_column(:procedures, :work_instruction_ids, :text)
    add_column(:procedures, :work_instruction_ids, :text, array: true)


  end
end
