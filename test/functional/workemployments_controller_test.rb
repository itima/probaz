require 'test_helper'

class WorkemploymentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workemployments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workemployment" do
    assert_difference('Workemployment.count') do
      post :create, :workemployment => { }
    end

    assert_redirected_to workemployment_path(assigns(:workemployment))
  end

  test "should show workemployment" do
    get :show, :id => workemployments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => workemployments(:one).to_param
    assert_response :success
  end

  test "should update workemployment" do
    put :update, :id => workemployments(:one).to_param, :workemployment => { }
    assert_redirected_to workemployment_path(assigns(:workemployment))
  end

  test "should destroy workemployment" do
    assert_difference('Workemployment.count', -1) do
      delete :destroy, :id => workemployments(:one).to_param
    end

    assert_redirected_to workemployments_path
  end
end
