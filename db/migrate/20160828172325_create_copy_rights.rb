class CreateCopyRights < ActiveRecord::Migration
  def change
    create_table :copy_rights do |t|
      t.string :copy_right_title
      t.timestamps null: false
    end
  end
end
