require 'test_helper'

class BonusAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bonus_account = bonus_accounts(:one)
  end

  test "should get index" do
    get bonus_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_bonus_account_url
    assert_response :success
  end

  test "should create bonus_account" do
    assert_difference('BonusAccount.count') do
      post bonus_accounts_url, params: { bonus_account: { ba_atw: @bonus_account.ba_atw, ba_call_destination,: @bonus_account.ba_call_destination,, ba_off_net_tariff: @bonus_account.ba_off_net_tariff, ba_on_net_tariff: @bonus_account.ba_on_net_tariff, ba_priority: @bonus_account.ba_priority, ba_pulse: @bonus_account.ba_pulse, ba_val_available: @bonus_account.ba_val_available, ba_val_before: @bonus_account.ba_val_before, ba_val_change: @bonus_account.ba_val_change } }
    end

    assert_redirected_to bonus_account_url(BonusAccount.last)
  end

  test "should show bonus_account" do
    get bonus_account_url(@bonus_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_bonus_account_url(@bonus_account)
    assert_response :success
  end

  test "should update bonus_account" do
    patch bonus_account_url(@bonus_account), params: { bonus_account: { ba_atw: @bonus_account.ba_atw, ba_call_destination,: @bonus_account.ba_call_destination,, ba_off_net_tariff: @bonus_account.ba_off_net_tariff, ba_on_net_tariff: @bonus_account.ba_on_net_tariff, ba_priority: @bonus_account.ba_priority, ba_pulse: @bonus_account.ba_pulse, ba_val_available: @bonus_account.ba_val_available, ba_val_before: @bonus_account.ba_val_before, ba_val_change: @bonus_account.ba_val_change } }
    assert_redirected_to bonus_account_url(@bonus_account)
  end

  test "should destroy bonus_account" do
    assert_difference('BonusAccount.count', -1) do
      delete bonus_account_url(@bonus_account)
    end

    assert_redirected_to bonus_accounts_url
  end
end
