require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { name: @service.name, service_atw,: @service.service_atw,, service_call_destination: @service.service_call_destination, service_off_net_tariff,: @service.service_off_net_tariff,, service_on_net_tariff: @service.service_on_net_tariff, service_priority: @service.service_priority, service_pulse: @service.service_pulse } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { name: @service.name, service_atw,: @service.service_atw,, service_call_destination: @service.service_call_destination, service_off_net_tariff,: @service.service_off_net_tariff,, service_on_net_tariff: @service.service_on_net_tariff, service_priority: @service.service_priority, service_pulse: @service.service_pulse } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
