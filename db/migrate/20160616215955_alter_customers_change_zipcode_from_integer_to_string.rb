class AlterCustomersChangeZipcodeFromIntegerToString < ActiveRecord::Migration
  def change
    change_column :customers, :zipcode, :string
  end
end
