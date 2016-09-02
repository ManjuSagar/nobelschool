class NobelController < ApplicationController
  layout 'admin', only:[:index]
  def home
    @gallary = HomeImage.all#.where(:image_type=> "Home Page")
  end


  def about_us
    @about = About.last
  end

  def teachers
    @staffs = Staff.all
  end

  def gallary
    @gallary = Gallary.all#.where(:image_type=> "Gallary")
  end

  def facilities
    @facility = Facility.first
  end

  def contact_us
    @addres = Address.last
  end

  def index
    unless current_user
      redirect_to user_session_path
    end
  end

end