require 'test_helper'

class DemoTestControllerTest < ActionController::TestCase
  test "should get demo" do
    get :demo
    assert_response :success
  end

end
