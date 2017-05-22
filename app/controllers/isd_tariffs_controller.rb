class IsdTariffsController < ApplicationController
  before_action :set_isd_tariff, only: [:show, :edit, :update, :destroy]

  # GET /isd_tariffs
  # GET /isd_tariffs.json
  def index
    @isd_tariffs = IsdTariff.all
  end

  # GET /isd_tariffs/1
  # GET /isd_tariffs/1.json
  def show
  end

  # GET /isd_tariffs/new
  def new
    @isd_tariff = IsdTariff.new
  end

  # GET /isd_tariffs/1/edit
  def edit
  end

  # POST /isd_tariffs
  # POST /isd_tariffs.json
  def create
    @isd_tariff = IsdTariff.new(isd_tariff_params)

    respond_to do |format|
      if @isd_tariff.save
        format.html { redirect_to @isd_tariff, notice: 'Isd tariff was successfully created.' }
        format.json { render :show, status: :created, location: @isd_tariff }
      else
        format.html { render :new }
        format.json { render json: @isd_tariff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isd_tariffs/1
  # PATCH/PUT /isd_tariffs/1.json
  def update
    respond_to do |format|
      if @isd_tariff.update(isd_tariff_params)
        format.html { redirect_to @isd_tariff, notice: 'Isd tariff was successfully updated.' }
        format.json { render :show, status: :ok, location: @isd_tariff }
      else
        format.html { render :edit }
        format.json { render json: @isd_tariff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isd_tariffs/1
  # DELETE /isd_tariffs/1.json
  def destroy
    @isd_tariff.destroy
    respond_to do |format|
      format.html { redirect_to isd_tariffs_url, notice: 'Isd tariff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_isd_tariff
      @isd_tariff = IsdTariff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def isd_tariff_params
      params.require(:isd_tariff).permit(:pulse, :tariff, :number_prefix)
    end
end
