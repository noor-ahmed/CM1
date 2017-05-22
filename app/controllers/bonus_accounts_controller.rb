class BonusAccountsController < ApplicationController
  before_action :set_bonus_account, only: [:show, :edit, :update, :destroy]

  # GET /bonus_accounts
  # GET /bonus_accounts.json
  def index
    @bonus_accounts = BonusAccount.all
  end

  # GET /bonus_accounts/1
  # GET /bonus_accounts/1.json
  def show
  end

  # GET /bonus_accounts/new
  def new
    @bonus_account = BonusAccount.new
  end

  # GET /bonus_accounts/1/edit
  def edit
  end

  # POST /bonus_accounts
  # POST /bonus_accounts.json
  def create
    @bonus_account = BonusAccount.new(bonus_account_params)

    respond_to do |format|
      if @bonus_account.save
        format.html { redirect_to @bonus_account, notice: 'Bonus account was successfully created.' }
        format.json { render :show, status: :created, location: @bonus_account }
      else
        format.html { render :new }
        format.json { render json: @bonus_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bonus_accounts/1
  # PATCH/PUT /bonus_accounts/1.json
  def update
    respond_to do |format|
      if @bonus_account.update(bonus_account_params)
        format.html { redirect_to @bonus_account, notice: 'Bonus account was successfully updated.' }
        format.json { render :show, status: :ok, location: @bonus_account }
      else
        format.html { render :edit }
        format.json { render json: @bonus_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bonus_accounts/1
  # DELETE /bonus_accounts/1.json
  def destroy
    @bonus_account.destroy
    respond_to do |format|
      format.html { redirect_to bonus_accounts_url, notice: 'Bonus account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bonus_account
      @bonus_account = BonusAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bonus_account_params
      params.require(:bonus_account).permit(:ba_val_available, :ba_val_change, :ba_val_before, :ba_pulse, :ba_on_net_tariff, :ba_off_net_tariff, :ba_atw, :ba_call_destination,, :ba_priority)
    end
end
