require 'test_helper'

class SearchoffersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searchoffers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create searchoffer" do
    assert_difference('Searchoffer.count') do
      post :create, :searchoffer => { }
    end

    assert_redirected_to searchoffer_path(assigns(:searchoffer))
  end

  test "should show searchoffer" do
    get :show, :id => searchoffers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => searchoffers(:one).to_param
    assert_response :success
  end

  test "should update searchoffer" do
    put :update, :id => searchoffers(:one).to_param, :searchoffer => { }
    assert_redirected_to searchoffer_path(assigns(:searchoffer))
  end

  test "should destroy searchoffer" do
    assert_difference('Searchoffer.count', -1) do
      delete :destroy, :id => searchoffers(:one).to_param
    end

    assert_redirected_to searchoffers_path
  end
end
