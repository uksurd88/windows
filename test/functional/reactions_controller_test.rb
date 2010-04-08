require 'test_helper'

class ReactionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reaction" do
    assert_difference('Reaction.count') do
      post :create, :reaction => { }
    end

    assert_redirected_to reaction_path(assigns(:reaction))
  end

  test "should show reaction" do
    get :show, :id => reactions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => reactions(:one).to_param
    assert_response :success
  end

  test "should update reaction" do
    put :update, :id => reactions(:one).to_param, :reaction => { }
    assert_redirected_to reaction_path(assigns(:reaction))
  end

  test "should destroy reaction" do
    assert_difference('Reaction.count', -1) do
      delete :destroy, :id => reactions(:one).to_param
    end

    assert_redirected_to reactions_path
  end
end
