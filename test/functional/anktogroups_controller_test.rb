require 'test_helper'

class AnktogroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anktogroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anktogroup" do
    assert_difference('Anktogroup.count') do
      post :create, :anktogroup => { }
    end

    assert_redirected_to anktogroup_path(assigns(:anktogroup))
  end

  test "should show anktogroup" do
    get :show, :id => anktogroups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => anktogroups(:one).to_param
    assert_response :success
  end

  test "should update anktogroup" do
    put :update, :id => anktogroups(:one).to_param, :anktogroup => { }
    assert_redirected_to anktogroup_path(assigns(:anktogroup))
  end

  test "should destroy anktogroup" do
    assert_difference('Anktogroup.count', -1) do
      delete :destroy, :id => anktogroups(:one).to_param
    end

    assert_redirected_to anktogroups_path
  end
end
