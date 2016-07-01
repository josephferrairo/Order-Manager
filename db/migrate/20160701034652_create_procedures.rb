class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :name
      t.string :code
      t.integer :user_id
      t.timestamps null: false
    end
    add_index :procedures, :user_id
  end
end
