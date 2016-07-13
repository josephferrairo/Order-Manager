class CreateWorkInstructionProcedures < ActiveRecord::Migration
  def change
    create_table :work_instruction_procedures do |t|
      t.integer :work_instruction_id
      t.integer :process_id

      t.timestamps null: false
    end
  end
end
