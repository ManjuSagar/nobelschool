class AddNewTables < ActiveRecord::Migration
  def change
    add_column :staffs, :experience, :string
    add_column :staffs, :specilizaton, :string
  end
end
