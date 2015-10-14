require 'test_helper'

class CarPricesControllerTest < ActionController::TestCase
  setup do
    @car_price = car_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_price" do
    assert_difference('CarPrice.count') do
      post :create, car_price: {  }
    end

    assert_redirected_to car_price_path(assigns(:car_price))
  end

  test "should show car_price" do
    get :show, id: @car_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_price
    assert_response :success
  end

  test "should update car_price" do
    patch :update, id: @car_price, car_price: {  }
    assert_redirected_to car_price_path(assigns(:car_price))
  end

  test "should destroy car_price" do
    assert_difference('CarPrice.count', -1) do
      delete :destroy, id: @car_price
    end

    assert_redirected_to car_prices_path
  end
end
