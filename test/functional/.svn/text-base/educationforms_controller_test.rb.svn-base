require 'test_helper'

class EducationformsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:educationforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create educationform" do
    assert_difference('Educationform.count') do
      post :create, :educationform => { }
    end

    assert_redirected_to educationform_path(assigns(:educationform))
  end

  test "should show educationform" do
    get :show, :id => educationforms(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => educationforms(:one).to_param
    assert_response :success
  end

  test "should update educationform" do
    put :update, :id => educationforms(:one).to_param, :educationform => { }
    assert_redirected_to educationform_path(assigns(:educationform))
  end

  test "should destroy educationform" do
    assert_difference('Educationform.count', -1) do
      delete :destroy, :id => educationforms(:one).to_param
    end

    assert_redirected_to educationforms_path
  end
end
