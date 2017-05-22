class CallRecordsController < ApplicationController
  before_action :set_call_record, only: [:show, :edit, :update, :destroy]

  # GET /call_records
  # GET /call_records.json
  def index
    @call_records = CallRecord.all
  end

  # GET /call_records/1
  # GET /call_records/1.json
  def show
  end

  # GET /call_records/new
  def new
    @call_record = CallRecord.new
  end

  # GET /call_records/1/edit
  def edit
  end

  # POST /call_records
  # POST /call_records.json
  def create
    @call_record = CallRecord.new(call_record_params)

    respond_to do |format|
      if @call_record.save
        format.html { redirect_to @call_record, notice: 'Call record was successfully created.' }
        format.json { render :show, status: :created, location: @call_record }
      else
        format.html { render :new }
        format.json { render json: @call_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /call_records/1
  # PATCH/PUT /call_records/1.json
  def update
    respond_to do |format|
      if @call_record.update(call_record_params)
        format.html { redirect_to @call_record, notice: 'Call record was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_record }
      else
        format.html { render :edit }
        format.json { render json: @call_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_records/1
  # DELETE /call_records/1.json
  def destroy
    @call_record.destroy
    respond_to do |format|
      format.html { redirect_to call_records_url, notice: 'Call record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_record
      @call_record = CallRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_record_params
      params.fetch(:call_record, {})
    end
end
