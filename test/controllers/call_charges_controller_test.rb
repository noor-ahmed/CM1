require 'test_helper'

class CallChargesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @call_charge = call_charges(:one)
  end

  test "should get index" do
    get call_charges_url
    assert_response :success
  end

  test "should get new" do
    get new_call_charge_url
    assert_response :success
  end

  test "should create call_charge" do
    assert_difference('CallCharge.count') do
      post call_charges_url, params: { call_charge: {  } }
    end

    assert_redirected_to call_charge_url(CallCharge.last)
  end

  test "should show call_charge" do
    get call_charge_url(@call_charge)
    assert_response :success
  end

  test "should get edit" do
    get edit_call_charge_url(@call_charge)
    assert_response :success
  end

  test "should update call_charge" do
    patch call_charge_url(@call_charge), params: { call_charge: {  } }
    assert_redirected_to call_charge_url(@call_charge)
  end

  test "should destroy call_charge" do
    assert_difference('CallCharge.count', -1) do
      delete call_charge_url(@call_charge)
    end

    assert_redirected_to call_charges_url
  end
end
