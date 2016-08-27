class Gallary < ActiveRecord::Base
  # has_attached_file :image, {
  #     :storage => :sftp,
  #
  #     # :path => "/path_on_ftp_server/:attachment/:id/:style/:filename",
  #
  #     # The full URL of where the attachment is publicly accessible.
  #     # This supports Paperclip::Interpolations.
  #     # :url => "/url_prefix/:attachment/:id/:style/:filename",
  #
  #     # The list of FTP servers to use
  #     :ftp_servers => [
  #         {
  #           :host=> "black.truevalue.com",
  #           :user=> "splotnic",
  #           :password=> "3p!ont13",
  #           :port=> 22
  #         }]
  # }#, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

   after_save :update_gallary_detail

  attr_accessor :title, :bytes, :image, :image_cache, :image_type
  mount_uploader :image, ImageUploader

  validates_presence_of :title, :image, :image_type

  def update_gallary_detail
    puts "selddddddddddddddddddddddddddddddd  ddddddddddddd #{title}"
    puts "selddddddddddddddddddddddddddddddd  ddddddddddddd #{image_type}"
    self.update_column(:image_type, image_type)
    self.update_column(:title, title)
  end

end