class NikulogsController < ApplicationController
  before_action :set_nikulog, only: %i[ show edit update destroy ]

  # GET /nikulogs or /nikulogs.json
  def index
    @nikulogs = Nikulog.all
  end

  # GET /nikulogs/1 or /nikulogs/1.json
  def show
  end

  # GET /nikulogs/new
  def new
    @nikulog = Nikulog.new
  end

  # GET /nikulogs/1/edit
  def edit
  end

  # POST /nikulogs or /nikulogs.json
  def create
    @nikulog = Nikulog.new(nikulog_params)

    respond_to do |format|
      if @nikulog.save
        format.html { redirect_to @nikulog, notice: "Nikulog was successfully created." }
        format.json { render :show, status: :created, location: @nikulog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nikulog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nikulogs/1 or /nikulogs/1.json
  def update
    respond_to do |format|
      if @nikulog.update(nikulog_params)
        format.html { redirect_to @nikulog, notice: "Nikulog was successfully updated." }
        format.json { render :show, status: :ok, location: @nikulog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nikulog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nikulogs/1 or /nikulogs/1.json
  def destroy
    @nikulog.destroy
    respond_to do |format|
      format.html { redirect_to nikulogs_url, notice: "Nikulog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nikulog
      @nikulog = Nikulog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nikulog_params
      params.require(:nikulog).permit(:nikudate, :nikumenu)
    end
end
