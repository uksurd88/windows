require 'test_helper'

class MywinsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mywins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mywin" do
    assert_difference('Mywin.count') do
      post :create, :mywin => { }
    end

    assert_redirected_to mywin_path(assigns(:mywin))
  end

  test "should show mywin" do
    get :show, :id => mywins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mywins(:one).to_param
    assert_response :success
  end

  test "should update mywin" do
    put :update, :id => mywins(:one).to_param, :mywin => { }
    assert_redirected_to mywin_path(assigns(:mywin))
  end

  test "should destroy mywin" do
    assert_difference('Mywin.count', -1) do
      delete :destroy, :id => mywins(:one).to_param
    end

    assert_redirected_to mywins_path
  end
end
