require 'test_helper'

class FnfItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fnf_item = fnf_items(:one)
  end

  test "should get index" do
    get fnf_items_url
    assert_response :success
  end

  test "should get new" do
    get new_fnf_item_url
    assert_response :success
  end

  test "should create fnf_item" do
    assert_difference('FnfItem.count') do
      post fnf_items_url, params: { fnf_item: { fnf_atw: @fnf_item.fnf_atw, fnf_off_net_tariff: @fnf_item.fnf_off_net_tariff, fnf_on_net_tariff: @fnf_item.fnf_on_net_tariff, fnf_priority: @fnf_item.fnf_priority, no_of_fnf: @fnf_item.no_of_fnf, pulse: @fnf_item.pulse } }
    end

    assert_redirected_to fnf_item_url(FnfItem.last)
  end

  test "should show fnf_item" do
    get fnf_item_url(@fnf_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_fnf_item_url(@fnf_item)
    assert_response :success
  end

  test "should update fnf_item" do
    patch fnf_item_url(@fnf_item), params: { fnf_item: { fnf_atw: @fnf_item.fnf_atw, fnf_off_net_tariff: @fnf_item.fnf_off_net_tariff, fnf_on_net_tariff: @fnf_item.fnf_on_net_tariff, fnf_priority: @fnf_item.fnf_priority, no_of_fnf: @fnf_item.no_of_fnf, pulse: @fnf_item.pulse } }
    assert_redirected_to fnf_item_url(@fnf_item)
  end

  test "should destroy fnf_item" do
    assert_difference('FnfItem.count', -1) do
      delete fnf_item_url(@fnf_item)
    end

    assert_redirected_to fnf_items_url
  end
end
