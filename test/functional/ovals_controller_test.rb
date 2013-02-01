require 'test_helper'

class OvalsControllerTest < ActionController::TestCase
  setup do
    @oval = ovals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ovals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oval" do
    assert_difference('Oval.count') do
      post :create, oval: { as2: @oval.as2 }
    end

    assert_redirected_to oval_path(assigns(:oval))
  end

  test "should show oval" do
    get :show, id: @oval
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oval
    assert_response :success
  end

  test "should update oval" do
    put :update, id: @oval, oval: { as2: @oval.as2 }
    assert_redirected_to oval_path(assigns(:oval))
  end

  test "should destroy oval" do
    assert_difference('Oval.count', -1) do
      delete :destroy, id: @oval
    end

    assert_redirected_to ovals_path
  end
end
