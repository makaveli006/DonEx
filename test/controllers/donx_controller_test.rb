require "test_helper"

class DonxControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get donx_home_url
    assert_response :success
  end
end
