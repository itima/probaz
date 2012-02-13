require 'test_helper'

class PromoanksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promoanks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promoank" do
    assert_difference('Promoank.count') do
      post :create, :promoank => { }
    end

    assert_redirected_to promoank_path(assigns(:promoank))
  end

  test "should show promoank" do
    get :show, :id => promoanks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => promoanks(:one).to_param
    assert_response :success
  end

  test "should update promoank" do
    put :update, :id => promoanks(:one).to_param, :promoank => { }
    assert_redirected_to promoank_path(assigns(:promoank))
  end

  test "should destroy promoank" do
    assert_difference('Promoank.count', -1) do
      delete :destroy, :id => promoanks(:one).to_param
    end

    assert_redirected_to promoanks_path
  end
end
