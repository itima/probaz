require 'test_helper'

class LanglevelsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:langlevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create langlevel" do
    assert_difference('Langlevel.count') do
      post :create, :langlevel => { }
    end

    assert_redirected_to langlevel_path(assigns(:langlevel))
  end

  test "should show langlevel" do
    get :show, :id => langlevels(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => langlevels(:one).to_param
    assert_response :success
  end

  test "should update langlevel" do
    put :update, :id => langlevels(:one).to_param, :langlevel => { }
    assert_redirected_to langlevel_path(assigns(:langlevel))
  end

  test "should destroy langlevel" do
    assert_difference('Langlevel.count', -1) do
      delete :destroy, :id => langlevels(:one).to_param
    end

    assert_redirected_to langlevels_path
  end
end
