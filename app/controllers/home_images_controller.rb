class HomeImagesController < ApplicationController
  before_action :set_home_image, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  # GET /home_images
  # GET /home_images.json
  def index
    @home_images = HomeImage.all
  end

  # GET /home_images/1
  # GET /home_images/1.json
  def show
  end

  # GET /home_images/new
  def new
    @home_image = HomeImage.new
  end

  # GET /home_images/1/edit
  def edit
  end

  # POST /home_images
  # POST /home_images.json
  def create
    @home_image = HomeImage.new(home_image_params)

    respond_to do |format|
      if @home_image.save
        format.html { redirect_to home_images_path, notice: 'Home image was successfully created.' }
        format.json { render :show, status: :created, location: @home_image }
      else
        format.html { render :new }
        format.json { render json: @home_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_images/1
  # PATCH/PUT /home_images/1.json
  def update
    respond_to do |format|
      if @home_image.update(home_image_params)
        format.html { redirect_to home_images_path, notice: 'Home image was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_image }
      else
        format.html { render :edit }
        format.json { render json: @home_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_images/1
  # DELETE /home_images/1.json
  def destroy
    @home_image.destroy
    respond_to do |format|
      format.html { redirect_to home_images_url, notice: 'Home image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_image
      @home_image = HomeImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_image_params
      params.fetch(:home_image).permit(:title, :image)
    end
end
