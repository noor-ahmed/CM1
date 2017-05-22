class CallChargesController < ApplicationController
  before_action :set_call_charge, only: [:show, :edit, :update, :destroy]

  # GET /call_charges
  # GET /call_charges.json
  def index
    @call_charges = CallCharge.all
  end

  # GET /call_charges/1
  # GET /call_charges/1.json
  def show
  end

  # GET /call_charges/new
  def new
    @call_charge = CallCharge.new
  end

  # GET /call_charges/1/edit
  def edit
  end

  # POST /call_charges
  # POST /call_charges.json
  def create
    @call_charge = CallCharge.new(call_charge_params)

    respond_to do |format|
      if @call_charge.save
        format.html { redirect_to @call_charge, notice: 'Call charge was successfully created.' }
        format.json { render :show, status: :created, location: @call_charge }
      else
        format.html { render :new }
        format.json { render json: @call_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /call_charges/1
  # PATCH/PUT /call_charges/1.json
  def update
    respond_to do |format|
      if @call_charge.update(call_charge_params)
        format.html { redirect_to @call_charge, notice: 'Call charge was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_charge }
      else
        format.html { render :edit }
        format.json { render json: @call_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_charges/1
  # DELETE /call_charges/1.json
  def destroy
    @call_charge.destroy
    respond_to do |format|
      format.html { redirect_to call_charges_url, notice: 'Call charge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_charge
      @call_charge = CallCharge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_charge_params
      params.fetch(:call_charge, {})
    end
end
