require 'test_helper'

class IsdTariffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @isd_tariff = isd_tariffs(:one)
  end

  test "should get index" do
    get isd_tariffs_url
    assert_response :success
  end

  test "should get new" do
    get new_isd_tariff_url
    assert_response :success
  end

  test "should create isd_tariff" do
    assert_difference('IsdTariff.count') do
      post isd_tariffs_url, params: { isd_tariff: { number_prefix: @isd_tariff.number_prefix, pulse: @isd_tariff.pulse, tariff: @isd_tariff.tariff } }
    end

    assert_redirected_to isd_tariff_url(IsdTariff.last)
  end

  test "should show isd_tariff" do
    get isd_tariff_url(@isd_tariff)
    assert_response :success
  end

  test "should get edit" do
    get edit_isd_tariff_url(@isd_tariff)
    assert_response :success
  end

  test "should update isd_tariff" do
    patch isd_tariff_url(@isd_tariff), params: { isd_tariff: { number_prefix: @isd_tariff.number_prefix, pulse: @isd_tariff.pulse, tariff: @isd_tariff.tariff } }
    assert_redirected_to isd_tariff_url(@isd_tariff)
  end

  test "should destroy isd_tariff" do
    assert_difference('IsdTariff.count', -1) do
      delete isd_tariff_url(@isd_tariff)
    end

    assert_redirected_to isd_tariffs_url
  end
end
