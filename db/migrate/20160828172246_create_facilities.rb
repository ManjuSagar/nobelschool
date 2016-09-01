class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :image
      t.timestamps null: false
    end
  end
end
