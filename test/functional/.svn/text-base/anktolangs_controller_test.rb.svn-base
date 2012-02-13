require 'test_helper'

class AnktolangsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anktolangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anktolang" do
    assert_difference('Anktolang.count') do
      post :create, :anktolang => { }
    end

    assert_redirected_to anktolang_path(assigns(:anktolang))
  end

  test "should show anktolang" do
    get :show, :id => anktolangs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => anktolangs(:one).to_param
    assert_response :success
  end

  test "should update anktolang" do
    put :update, :id => anktolangs(:one).to_param, :anktolang => { }
    assert_redirected_to anktolang_path(assigns(:anktolang))
  end

  test "should destroy anktolang" do
    assert_difference('Anktolang.count', -1) do
      delete :destroy, :id => anktolangs(:one).to_param
    end

    assert_redirected_to anktolangs_path
  end
end
