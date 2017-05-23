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

    def call_charge_calculation

      @call_records = CallRecord.all do |call_record|
        @user =   call_record.user_account
        @call_destination = '01722866941' #call_record.call_destination
        @user_fnf = @user.user_fnfs.find_by(fnf_phone_no: @call_destination)
        @call_destination_prefix = @call_destination[0..3]
        if @call_destination_prefix == '8801'
          @user_ba_priority_max_val = @user.bonus_accounts.maximum('ba_priority')
          @user_offers_priority_max_val = @user.offers.maximum('offer_priority')
          @user_max_priority_ba = @user.bonus_accounts.find_by(ba_priority: @user_ba_priority_max_val)

          if (@user_ba_priority_max_val > 0) && (@user_offers_priority_max_val > 0)
            if (@user_ba_priority_max_val > @user_offers_priority_max_val) && (@user_max_priority_ba.ba_val_available > 0.0)
              @user_max_priority = @user.bonus_accounts.find_by(ba_priority: @user_ba_priority_max_val)
              @pulse_cost = @user_max_priority.ba_pulse.strip.split('/').first.to_i
              @pulse_duration = @user_max_priority.ba_pulse.strip.split('/').last.to_i
              @call_charge = (call_record.duration/@pulse_duration)*@pulse_cost
            else
              @user_max_priority = @user.offers.find_by(offer_priority: @user_offers_priority_max_val)
              @pulse_cost = @user_max_priority.offer_pulse.strip.split('/').first.to_i
              @pulse_duration = @user_max_priority.offer_pulse.strip.split('/').last.to_i
              @call_charge = (call_record.duration/@pulse_duration)*@pulse_cost
            end

          else
            if @user_fnf.nil?
              @pulse_cost = @user.product.community.comm_pulse.strip.split('/').first.to_i
              @pulse_duration = @user.product.community.comm_pulse.strip.split('/').last.to_i
              @call_charge = (call_record.duration/@pulse_duration)*@pulse_cost
            else
              @pulse_cost = @user.product.fnf_item.pulse.strip.split('/').first.to_i
              @pulse_duration = @user.product.fnf_item.pulse.strip.split('/').last.to_i
              @call_charge = (call_record.duration/@pulse_duration)*@pulse_cost
            end
          end
        else
          @check_isd_prefix = IsdTariff.find_by(number_prefix: @call_destination_prefix)
          if @check_isd_prefix.nil?
            @short_code = ShortCode.find_by(phone: @call_destination)
            @call_duration = call_record.duration.to_f
            @call_charge = @call_duration*@short_code.tariff
          else
            @pulse_cost = @check_isd_prefix.pulse.strip.split('/').first.to_i
            @pulse_duration = @check_isd_prefix.pulse.strip.split('/').last.to_i
            @call_charge = (call_record.duration/@pulse_duration)*@pulse_cost
          end
        end
      end

    end
end
