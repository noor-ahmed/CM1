class AccumulatorsController < ApplicationController
  before_action :set_accumulator, only: [:show, :edit, :update, :destroy]

  # GET /accumulators
  # GET /accumulators.json
  def index
    @accumulators = Accumulator.all
  end

  # GET /accumulators/1
  # GET /accumulators/1.json
  def show
  end

  # GET /accumulators/new
  def new
    @accumulator = Accumulator.new
  end

  # GET /accumulators/1/edit
  def edit
  end

  # POST /accumulators
  # POST /accumulators.json
  def create
    @accumulator = Accumulator.new(accumulator_params)

    respond_to do |format|
      if @accumulator.save
        format.html { redirect_to @accumulator, notice: 'Accumulator was successfully created.' }
        format.json { render :show, status: :created, location: @accumulator }
      else
        format.html { render :new }
        format.json { render json: @accumulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accumulators/1
  # PATCH/PUT /accumulators/1.json
  def update
    respond_to do |format|
      if @accumulator.update(accumulator_params)
        format.html { redirect_to @accumulator, notice: 'Accumulator was successfully updated.' }
        format.json { render :show, status: :ok, location: @accumulator }
      else
        format.html { render :edit }
        format.json { render json: @accumulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accumulators/1
  # DELETE /accumulators/1.json
  def destroy
    @accumulator.destroy
    respond_to do |format|
      format.html { redirect_to accumulators_url, notice: 'Accumulator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accumulator
      @accumulator = Accumulator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accumulator_params
      params.require(:accumulator).permit(:acc_val_change, :acc_val_available)
    end
end
