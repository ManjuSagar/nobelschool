class GallariesController < ApplicationController
  before_action :set_gallary, only: [:show, :edit, :update, :destroy]

  # GET /galleries
  # GET /galleries.json
  def index
    @gallaries = Gallary.all.where(:image_type=> "Home Page")

    @gallary = Gallary.all.where(:image_type=> "Gallary")
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
  end

  # GET /galleries/new
  def new
    @gallary = Gallary.new
  end

  # GET /galleries/1/edit
  def edit
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @gallary = Gallary.new(gallary_params)

    respond_to do |format|
      if @gallary.save
        format.html { redirect_to gallaries_path, notice: 'Gallary was successfully created.' }
        format.json { render :show, status: :created, location: @gallary }
      else
        format.html { render :new }
        format.json { render json: @gallary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update
    respond_to do |format|
      if @gallary.update(gallary_params)
        format.html { redirect_to gallaries_path, notice: 'Gallary was successfully updated.' }
        format.json { render :show, status: :ok, location: @gallary }
      else
        format.html { render :edit }
        format.json { render json: @gallary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @gallary.destroy
    respond_to do |format|
      format.html { redirect_to gallaries_url, notice: 'Gallary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallary
      @gallary = Gallary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallary_params
      params.require(:gallary).permit(:title, :image_type, :image)
    end
end
