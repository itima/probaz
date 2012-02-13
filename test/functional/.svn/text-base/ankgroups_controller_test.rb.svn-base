require 'test_helper'

class AnkgroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ankgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ankgroup" do
    assert_difference('Ankgroup.count') do
      post :create, :ankgroup => { }
    end

    assert_redirected_to ankgroup_path(assigns(:ankgroup))
  end

  test "should show ankgroup" do
    get :show, :id => ankgroups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ankgroups(:one).to_param
    assert_response :success
  end

  test "should update ankgroup" do
    put :update, :id => ankgroups(:one).to_param, :ankgroup => { }
    assert_redirected_to ankgroup_path(assigns(:ankgroup))
  end

  test "should destroy ankgroup" do
    assert_difference('Ankgroup.count', -1) do
      delete :destroy, :id => ankgroups(:one).to_param
    end

    assert_redirected_to ankgroups_path
  end
end
