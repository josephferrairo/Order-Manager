class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :customercode, limit: 6
      t.text :address
      t.string :city
      t.string :state, limit: 2
      t.integer :zipcode, limit: 5

      t.timestamps null: false
    end
  end
end
