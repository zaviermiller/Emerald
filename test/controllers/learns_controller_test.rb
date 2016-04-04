require 'test_helper'

class LearnsControllerTest < ActionController::TestCase
  setup do
    @learn = learns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:learns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create learn" do
    assert_difference('Learn.count') do
      post :create, learn: { answer: @learn.answer, instructions: @learn.instructions, title: @learn.title }
    end

    assert_redirected_to learn_path(assigns(:learn))
  end

  test "should show learn" do
    get :show, id: @learn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @learn
    assert_response :success
  end

  test "should update learn" do
    patch :update, id: @learn, learn: { answer: @learn.answer, instructions: @learn.instructions, title: @learn.title }
    assert_redirected_to learn_path(assigns(:learn))
  end

  test "should destroy learn" do
    assert_difference('Learn.count', -1) do
      delete :destroy, id: @learn
    end

    assert_redirected_to learns_path
  end
end
