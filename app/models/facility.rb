class Facility < ActiveRecord::Base

  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
