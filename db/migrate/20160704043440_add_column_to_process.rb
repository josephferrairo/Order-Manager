class AddColumnToProcess < ActiveRecord::Migration
  def change
    add_column :procedures, :work_instruction_id, :integer
  end
end
