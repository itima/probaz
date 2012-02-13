require 'test_helper'

class HaircolorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haircolors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haircolor" do
    assert_difference('Haircolor.count') do
      post :create, :haircolor => { }
    end

    assert_redirected_to haircolor_path(assigns(:haircolor))
  end

  test "should show haircolor" do
    get :show, :id => haircolors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => haircolors(:one).to_param
    assert_response :success
  end

  test "should update haircolor" do
    put :update, :id => haircolors(:one).to_param, :haircolor => { }
    assert_redirected_to haircolor_path(assigns(:haircolor))
  end

  test "should destroy haircolor" do
    assert_difference('Haircolor.count', -1) do
      delete :destroy, :id => haircolors(:one).to_param
    end

    assert_redirected_to haircolors_path
  end
end
