require 'test_helper'

class PclevelsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pclevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pclevel" do
    assert_difference('Pclevel.count') do
      post :create, :pclevel => { }
    end

    assert_redirected_to pclevel_path(assigns(:pclevel))
  end

  test "should show pclevel" do
    get :show, :id => pclevels(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pclevels(:one).to_param
    assert_response :success
  end

  test "should update pclevel" do
    put :update, :id => pclevels(:one).to_param, :pclevel => { }
    assert_redirected_to pclevel_path(assigns(:pclevel))
  end

  test "should destroy pclevel" do
    assert_difference('Pclevel.count', -1) do
      delete :destroy, :id => pclevels(:one).to_param
    end

    assert_redirected_to pclevels_path
  end
end
