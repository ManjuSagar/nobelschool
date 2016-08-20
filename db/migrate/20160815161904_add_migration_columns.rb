class AddMigrationColumns < ActiveRecord::Migration
  def change

      create_table :gallaries do |f|
       f.string :image_type
     end

      add_attachment :gallaries, :image
  end
end
