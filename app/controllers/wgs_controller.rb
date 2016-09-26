class WgsController < ApplicationController
  before_action :set_wg, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
  # GET /wgs
  # GET /wgs.json
  def index
    @wgs = Wg.all
  end

  # GET /wgs/1
  # GET /wgs/1.json
  def show
  end

  # GET /wgs/new
  def new
    @wg = Wg.new
  end
  
  def add
    @wg = Wg.find(params[:format])
    current_user.update_attributes!(:wg_id => @wg.id)
	redirect_to '/dashboard'
  end
  
  def remove
    current_user.update_attributes!(:wg_id => nil)
	redirect_to '/dashboard'
  end

  # GET /wgs/1/edit
  def edit
  end

  # POST /wgs
  # POST /wgs.json
  def create
    @wg = Wg.new(wg_params)
	
    respond_to do |format|
      if @wg.save
        format.html { redirect_to @wg, notice: 'Wg was successfully created.' }
        format.json { render :show, status: :created, location: @wg }
      else
        format.html { render :new }
        format.json { render json: @wg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wgs/1
  # PATCH/PUT /wgs/1.json
  def update
    respond_to do |format|
      if @wg.update(wg_params)
        format.html { redirect_to @wg, notice: 'Wg was successfully updated.' }
        format.json { render :show, status: :ok, location: @wg }
      else
        format.html { render :edit }
        format.json { render json: @wg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wgs/1
  # DELETE /wgs/1.json
  def destroy
    @wg.destroy
    respond_to do |format|
      format.html { redirect_to wgs_url, notice: 'Wg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wg
      @wg = Wg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wg_params
      params.require(:wg).permit(:name)
    end
end
