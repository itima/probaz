require 'test_helper'

class SelanksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selanks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selank" do
    assert_difference('Selank.count') do
      post :create, :selank => { }
    end

    assert_redirected_to selank_path(assigns(:selank))
  end

  test "should show selank" do
    get :show, :id => selanks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => selanks(:one).to_param
    assert_response :success
  end

  test "should update selank" do
    put :update, :id => selanks(:one).to_param, :selank => { }
    assert_redirected_to selank_path(assigns(:selank))
  end

  test "should destroy selank" do
    assert_difference('Selank.count', -1) do
      delete :destroy, :id => selanks(:one).to_param
    end

    assert_redirected_to selanks_path
  end
end
