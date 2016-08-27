class AddFieldsToGallery < ActiveRecord::Migration
  def up
      add_column :gallaries, :title, :string
      add_column :gallaries, :image, :string
      add_column :gallaries, :bytes, :integer

    remove_column :gallaries, :image_file_name
    remove_column :gallaries, :image_content_type
    remove_column :gallaries, :image_file_size
    remove_column :gallaries, :image_updated_at
  end
end