require 'test_helper'

class SnippitsControllerTest < ActionController::TestCase
  setup do
    @snippit = snippits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snippits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snippit" do
    assert_difference('Snippit.count') do
      post :create, snippit: { css: @snippit.css, html: @snippit.html, user_id: @snippit.user_id }
    end

    assert_redirected_to snippit_path(assigns(:snippit))
  end

  test "should show snippit" do
    get :show, id: @snippit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snippit
    assert_response :success
  end

  test "should update snippit" do
    patch :update, id: @snippit, snippit: { css: @snippit.css, html: @snippit.html, user_id: @snippit.user_id }
    assert_redirected_to snippit_path(assigns(:snippit))
  end

  test "should destroy snippit" do
    assert_difference('Snippit.count', -1) do
      delete :destroy, id: @snippit
    end

    assert_redirected_to snippits_path
  end
end
