class Staff < ActiveRecord::Base
  validates :name, :presence=>true
  validates :education, :presence=>true
end