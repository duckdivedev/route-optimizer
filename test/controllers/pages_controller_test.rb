require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get optimizer" do
    get pages_optimizer_url
    assert_response :success
  end
end
