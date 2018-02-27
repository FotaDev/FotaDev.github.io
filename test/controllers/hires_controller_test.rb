require 'test_helper'

class HiresControllerTest < ActionDispatch::IntegrationTest
  test "should get past" do
    get hires_past_url
    assert_response :success
  end

  test "should get current" do
    get hires_current_url
    assert_response :success
  end

  test "should get future" do
    get hires_future_url
    assert_response :success
  end

end
