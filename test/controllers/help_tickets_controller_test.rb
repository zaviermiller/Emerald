require 'test_helper'

class HelpTicketsControllerTest < ActionController::TestCase
  setup do
    @help_ticket = help_tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:help_tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create help_ticket" do
    assert_difference('HelpTicket.count') do
      post :create, help_ticket: { user_id: @help_ticket.user_id }
    end

    assert_redirected_to help_ticket_path(assigns(:help_ticket))
  end

  test "should show help_ticket" do
    get :show, id: @help_ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @help_ticket
    assert_response :success
  end

  test "should update help_ticket" do
    patch :update, id: @help_ticket, help_ticket: { user_id: @help_ticket.user_id }
    assert_redirected_to help_ticket_path(assigns(:help_ticket))
  end

  test "should destroy help_ticket" do
    assert_difference('HelpTicket.count', -1) do
      delete :destroy, id: @help_ticket
    end

    assert_redirected_to help_tickets_path
  end
end
