require 'test_helper'

class ServedMealsControllerTest < ActionController::TestCase
  setup do
    @served_meal = served_meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:served_meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create served_meal" do
    assert_difference('ServedMeal.count') do
      post :create, served_meal: {  }
    end

    assert_redirected_to served_meal_path(assigns(:served_meal))
  end

  test "should show served_meal" do
    get :show, id: @served_meal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @served_meal
    assert_response :success
  end

  test "should update served_meal" do
    put :update, id: @served_meal, served_meal: {  }
    assert_redirected_to served_meal_path(assigns(:served_meal))
  end

  test "should destroy served_meal" do
    assert_difference('ServedMeal.count', -1) do
      delete :destroy, id: @served_meal
    end

    assert_redirected_to served_meals_path
  end
end
