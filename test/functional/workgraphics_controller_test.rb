require 'test_helper'

class WorkgraphicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workgraphics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workgraphic" do
    assert_difference('Workgraphic.count') do
      post :create, :workgraphic => { }
    end

    assert_redirected_to workgraphic_path(assigns(:workgraphic))
  end

  test "should show workgraphic" do
    get :show, :id => workgraphics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => workgraphics(:one).to_param
    assert_response :success
  end

  test "should update workgraphic" do
    put :update, :id => workgraphics(:one).to_param, :workgraphic => { }
    assert_redirected_to workgraphic_path(assigns(:workgraphic))
  end

  test "should destroy workgraphic" do
    assert_difference('Workgraphic.count', -1) do
      delete :destroy, :id => workgraphics(:one).to_param
    end

    assert_redirected_to workgraphics_path
  end
end
