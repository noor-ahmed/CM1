require 'test_helper'

class CallRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @call_record = call_records(:one)
  end

  test "should get index" do
    get call_records_url
    assert_response :success
  end

  test "should get new" do
    get new_call_record_url
    assert_response :success
  end

  test "should create call_record" do
    assert_difference('CallRecord.count') do
      post call_records_url, params: { call_record: {  } }
    end

    assert_redirected_to call_record_url(CallRecord.last)
  end

  test "should show call_record" do
    get call_record_url(@call_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_call_record_url(@call_record)
    assert_response :success
  end

  test "should update call_record" do
    patch call_record_url(@call_record), params: { call_record: {  } }
    assert_redirected_to call_record_url(@call_record)
  end

  test "should destroy call_record" do
    assert_difference('CallRecord.count', -1) do
      delete call_record_url(@call_record)
    end

    assert_redirected_to call_records_url
  end
end
