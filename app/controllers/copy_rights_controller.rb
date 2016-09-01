class CopyRightsController < ApplicationController
  before_action :set_copy_right, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  # GET /copy_rights
  # GET /copy_rights.json
  def index
    @copy_rights = CopyRight.all
  end

  # GET /copy_rights/1
  # GET /copy_rights/1.json
  def show
  end

  # GET /copy_rights/new
  def new
    @copy_right = CopyRight.new
  end

  # GET /copy_rights/1/edit
  def edit
  end

  # POST /copy_rights
  # POST /copy_rights.json
  def create
    @copy_right = CopyRight.new(copy_right_params)

    respond_to do |format|
      if @copy_right.save
        format.html { redirect_to copy_rights_path, notice: 'Copy right was successfully created.' }
        format.json { render :show, status: :created, location: @copy_right }
      else
        format.html { render :new }
        format.json { render json: @copy_right.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copy_rights/1
  # PATCH/PUT /copy_rights/1.json
  def update
    respond_to do |format|
      if @copy_right.update(copy_right_params)
        format.html { redirect_to copy_rights_path, notice: 'Copy right was successfully updated.' }
        format.json { render :show, status: :ok, location: @copy_right }
      else
        format.html { render :edit }
        format.json { render json: @copy_right.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copy_rights/1
  # DELETE /copy_rights/1.json
  def destroy
    @copy_right.destroy
    respond_to do |format|
      format.html { redirect_to copy_rights_url, notice: 'Copy right was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copy_right
      @copy_right = CopyRight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copy_right_params
      params.fetch(:copy_right).permit!
    end
end
