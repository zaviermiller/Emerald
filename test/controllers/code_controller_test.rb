require 'test_helper'

class CodeControllerTest < ActionController::TestCase
  test "should get langselect" do
    get :langselect
    assert_response :success
  end

end
