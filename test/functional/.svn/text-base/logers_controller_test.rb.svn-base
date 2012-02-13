require 'test_helper'

class LogersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loger" do
    assert_difference('Loger.count') do
      post :create, :loger => { }
    end

    assert_redirected_to loger_path(assigns(:loger))
  end

  test "should show loger" do
    get :show, :id => logers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => logers(:one).to_param
    assert_response :success
  end

  test "should update loger" do
    put :update, :id => logers(:one).to_param, :loger => { }
    assert_redirected_to loger_path(assigns(:loger))
  end

  test "should destroy loger" do
    assert_difference('Loger.count', -1) do
      delete :destroy, :id => logers(:one).to_param
    end

    assert_redirected_to logers_path
  end
end
