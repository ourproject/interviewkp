require 'test_helper'

class FinalDecisionsControllerTest < ActionController::TestCase
  setup do
    @final_decision = final_decisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:final_decisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create final_decision" do
    assert_difference('FinalDecision.count') do
      post :create, final_decision: { decision: @final_decision.decision, interview_id: @final_decision.interview_id, user_id: @final_decision.user_id }
    end

    assert_redirected_to final_decision_path(assigns(:final_decision))
  end

  test "should show final_decision" do
    get :show, id: @final_decision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @final_decision
    assert_response :success
  end

  test "should update final_decision" do
    patch :update, id: @final_decision, final_decision: { decision: @final_decision.decision, interview_id: @final_decision.interview_id, user_id: @final_decision.user_id }
    assert_redirected_to final_decision_path(assigns(:final_decision))
  end

  test "should destroy final_decision" do
    assert_difference('FinalDecision.count', -1) do
      delete :destroy, id: @final_decision
    end

    assert_redirected_to final_decisions_path
  end
end
