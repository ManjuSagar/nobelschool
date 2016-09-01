class HomeImage < ActiveRecord::Base

  # after_save :update_gallary_detail

  # attr_accessor :title, :bytes, :image, :image_cache, :image_type
  mount_uploader :image, ImageUploader

  validates_presence_of :title, :image

  # def update_gallary_detail
  #   # self.update_column(:image_type, image_type)
  #   self.update_column(:title, title)
  # end
end
