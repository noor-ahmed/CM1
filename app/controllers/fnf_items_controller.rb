class FnfItemsController < ApplicationController
  before_action :set_fnf_item, only: [:show, :edit, :update, :destroy]

  # GET /fnf_items
  # GET /fnf_items.json
  def index
    @fnf_items = FnfItem.all
  end

  # GET /fnf_items/1
  # GET /fnf_items/1.json
  def show
  end

  # GET /fnf_items/new
  def new
    @fnf_item = FnfItem.new
  end

  # GET /fnf_items/1/edit
  def edit
  end

  # POST /fnf_items
  # POST /fnf_items.json
  def create
    @fnf_item = FnfItem.new(fnf_item_params)

    respond_to do |format|
      if @fnf_item.save
        format.html { redirect_to @fnf_item, notice: 'Fnf item was successfully created.' }
        format.json { render :show, status: :created, location: @fnf_item }
      else
        format.html { render :new }
        format.json { render json: @fnf_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnf_items/1
  # PATCH/PUT /fnf_items/1.json
  def update
    respond_to do |format|
      if @fnf_item.update(fnf_item_params)
        format.html { redirect_to @fnf_item, notice: 'Fnf item was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnf_item }
      else
        format.html { render :edit }
        format.json { render json: @fnf_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnf_items/1
  # DELETE /fnf_items/1.json
  def destroy
    @fnf_item.destroy
    respond_to do |format|
      format.html { redirect_to fnf_items_url, notice: 'Fnf item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnf_item
      @fnf_item = FnfItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnf_item_params
      params.require(:fnf_item).permit(:no_of_fnf, :pulse, :fnf_on_net_tariff, :fnf_off_net_tariff, :fnf_atw, :fnf_priority)
    end
end
