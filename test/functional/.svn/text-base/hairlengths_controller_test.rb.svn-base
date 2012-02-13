require 'test_helper'

class HairlengthsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hairlengths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hairlength" do
    assert_difference('Hairlength.count') do
      post :create, :hairlength => { }
    end

    assert_redirected_to hairlength_path(assigns(:hairlength))
  end

  test "should show hairlength" do
    get :show, :id => hairlengths(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hairlengths(:one).to_param
    assert_response :success
  end

  test "should update hairlength" do
    put :update, :id => hairlengths(:one).to_param, :hairlength => { }
    assert_redirected_to hairlength_path(assigns(:hairlength))
  end

  test "should destroy hairlength" do
    assert_difference('Hairlength.count', -1) do
      delete :destroy, :id => hairlengths(:one).to_param
    end

    assert_redirected_to hairlengths_path
  end
end
