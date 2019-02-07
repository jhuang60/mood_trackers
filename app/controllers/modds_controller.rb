class ModdsController < ApplicationController
  before_action :set_modd, only: [:show, :edit, :update, :destroy]

  # GET /modds
  # GET /modds.json
  def index
    @modds = Modd.all
  end

  # GET /modds/1
  # GET /modds/1.json
  def show
  end

  # GET /modds/new
  def new
    @modd = Modd.new
  end

  # GET /modds/1/edit
  def edit
  end

  # POST /modds
  # POST /modds.json
  def create
    @modd = Modd.new(modd_params)

    respond_to do |format|
      if @modd.save
        format.html { redirect_to @modd, notice: 'Modd was successfully created.' }
        format.json { render :show, status: :created, location: @modd }
      else
        format.html { render :new }
        format.json { render json: @modd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modds/1
  # PATCH/PUT /modds/1.json
  def update
    respond_to do |format|
      if @modd.update(modd_params)
        format.html { redirect_to @modd, notice: 'Modd was successfully updated.' }
        format.json { render :show, status: :ok, location: @modd }
      else
        format.html { render :edit }
        format.json { render json: @modd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modds/1
  # DELETE /modds/1.json
  def destroy
    @modd.destroy
    respond_to do |format|
      format.html { redirect_to modds_url, notice: 'Modd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modd
      @modd = Modd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modd_params
      params.require(:modd).permit(:short, :note)
    end
end
