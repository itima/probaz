require 'test_helper'

class SeccodesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seccodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seccode" do
    assert_difference('Seccode.count') do
      post :create, :seccode => { }
    end

    assert_redirected_to seccode_path(assigns(:seccode))
  end

  test "should show seccode" do
    get :show, :id => seccodes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => seccodes(:one).to_param
    assert_response :success
  end

  test "should update seccode" do
    put :update, :id => seccodes(:one).to_param, :seccode => { }
    assert_redirected_to seccode_path(assigns(:seccode))
  end

  test "should destroy seccode" do
    assert_difference('Seccode.count', -1) do
      delete :destroy, :id => seccodes(:one).to_param
    end

    assert_redirected_to seccodes_path
  end
end
