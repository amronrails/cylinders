require 'test_helper'

class AccessControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
