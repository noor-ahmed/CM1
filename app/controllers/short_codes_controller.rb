class ShortCodesController < ApplicationController
  before_action :set_short_code, only: [:show, :edit, :update, :destroy]

  # GET /short_codes
  # GET /short_codes.json
  def index
    @short_codes = ShortCode.all
  end

  # GET /short_codes/1
  # GET /short_codes/1.json
  def show
  end

  # GET /short_codes/new
  def new
    @short_code = ShortCode.new
  end

  # GET /short_codes/1/edit
  def edit
  end

  # POST /short_codes
  # POST /short_codes.json
  def create
    @short_code = ShortCode.new(short_code_params)

    respond_to do |format|
      if @short_code.save
        format.html { redirect_to @short_code, notice: 'Short code was successfully created.' }
        format.json { render :show, status: :created, location: @short_code }
      else
        format.html { render :new }
        format.json { render json: @short_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /short_codes/1
  # PATCH/PUT /short_codes/1.json
  def update
    respond_to do |format|
      if @short_code.update(short_code_params)
        format.html { redirect_to @short_code, notice: 'Short code was successfully updated.' }
        format.json { render :show, status: :ok, location: @short_code }
      else
        format.html { render :edit }
        format.json { render json: @short_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /short_codes/1
  # DELETE /short_codes/1.json
  def destroy
    @short_code.destroy
    respond_to do |format|
      format.html { redirect_to short_codes_url, notice: 'Short code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_short_code
      @short_code = ShortCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def short_code_params
      params.require(:short_code).permit(:name, :phone, :tariff)
    end
end
