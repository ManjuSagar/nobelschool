class About < ActiveRecord::Base

  validates :school_info, presence: true
end
