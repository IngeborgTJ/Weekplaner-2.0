require 'test_helper'

class PlanersControllerTest < ActionController::TestCase
  setup do
    @planer = planers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planer" do
    assert_difference('Planer.count') do
      post :create, planer: { date: @planer.date, new_plan: @planer.new_plan, priority: @planer.priority, status: @planer.status }
    end

    assert_redirected_to planer_path(assigns(:planer))
  end

  test "should show planer" do
    get :show, id: @planer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planer
    assert_response :success
  end

  test "should update planer" do
    patch :update, id: @planer, planer: { date: @planer.date, new_plan: @planer.new_plan, priority: @planer.priority, status: @planer.status }
    assert_redirected_to planer_path(assigns(:planer))
  end

  test "should destroy planer" do
    assert_difference('Planer.count', -1) do
      delete :destroy, id: @planer
    end

    assert_redirected_to planers_path
  end
end
