require 'test_helper'

class AccumulatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accumulator = accumulators(:one)
  end

  test "should get index" do
    get accumulators_url
    assert_response :success
  end

  test "should get new" do
    get new_accumulator_url
    assert_response :success
  end

  test "should create accumulator" do
    assert_difference('Accumulator.count') do
      post accumulators_url, params: { accumulator: { acc_val_available: @accumulator.acc_val_available, acc_val_change: @accumulator.acc_val_change } }
    end

    assert_redirected_to accumulator_url(Accumulator.last)
  end

  test "should show accumulator" do
    get accumulator_url(@accumulator)
    assert_response :success
  end

  test "should get edit" do
    get edit_accumulator_url(@accumulator)
    assert_response :success
  end

  test "should update accumulator" do
    patch accumulator_url(@accumulator), params: { accumulator: { acc_val_available: @accumulator.acc_val_available, acc_val_change: @accumulator.acc_val_change } }
    assert_redirected_to accumulator_url(@accumulator)
  end

  test "should destroy accumulator" do
    assert_difference('Accumulator.count', -1) do
      delete accumulator_url(@accumulator)
    end

    assert_redirected_to accumulators_url
  end
end
