require 'test_helper'

class EgyptControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get comapnies" do
    get :comapnies
    assert_response :success
  end

  test "should get vehicles" do
    get :vehicles
    assert_response :success
  end

  test "should get motors" do
    get :motors
    assert_response :success
  end

  test "should get dealers" do
    get :dealers
    assert_response :success
  end

end
