require 'test_helper'

class ShortCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @short_code = short_codes(:one)
  end

  test "should get index" do
    get short_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_short_code_url
    assert_response :success
  end

  test "should create short_code" do
    assert_difference('ShortCode.count') do
      post short_codes_url, params: { short_code: { name: @short_code.name, phone: @short_code.phone, tariff: @short_code.tariff } }
    end

    assert_redirected_to short_code_url(ShortCode.last)
  end

  test "should show short_code" do
    get short_code_url(@short_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_short_code_url(@short_code)
    assert_response :success
  end

  test "should update short_code" do
    patch short_code_url(@short_code), params: { short_code: { name: @short_code.name, phone: @short_code.phone, tariff: @short_code.tariff } }
    assert_redirected_to short_code_url(@short_code)
  end

  test "should destroy short_code" do
    assert_difference('ShortCode.count', -1) do
      delete short_code_url(@short_code)
    end

    assert_redirected_to short_codes_url
  end
end
