class Staff < ActiveRecord::Base
  validates :name,  presence: true
  validates :education, presence: true
  validates :specilizaton, presence: true
  validates :experience, presence: true
end