require 'test_helper'

class InterviewSessionControllerTest < ActionController::TestCase
  test "should get interview" do
    get :interview
    assert_response :success
  end

end
