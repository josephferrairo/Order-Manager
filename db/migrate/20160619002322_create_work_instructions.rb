class CreateWorkInstructions < ActiveRecord::Migration
  def change
    create_table :work_instructions do |t|
      t.string :name
      t.string :workcode
      t.text :description
      t.integer :user_id
      t.timestamps null: false
    end
    add_index :work_instructions, :user_id
  end
end
