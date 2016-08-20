class Address < ActiveRecord::Base
  validates :address_line1, :presence=> true
  validates :address_line2, :presence=> true
  validates :address_line3, :presence=> true
  validates :pincode, :presence=> true
  validates :ph_num1, :presence=> true
  validates :ph_num2, :presence=> true
  validates :start_time, :presence=> true
  validates :end_time, :presence=> true
  validates :email, :presence=> true
end