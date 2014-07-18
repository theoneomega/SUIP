require 'test_helper'

class TattoosControllerTest < ActionController::TestCase
  setup do
    @tattoo = tattoos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tattoos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tattoo" do
    assert_difference('Tattoo.count') do
      post :create, tattoo: { back: @tattoo.back, description: @tattoo.description, front: @tattoo.front, head: @tattoo.head, hip: @tattoo.hip, left_arm: @tattoo.left_arm, left_foot: @tattoo.left_foot, left_forearm: @tattoo.left_forearm, left_hand: @tattoo.left_hand, left_leg: @tattoo.left_leg, left_thigh: @tattoo.left_thigh, neck: @tattoo.neck, right_arm: @tattoo.right_arm, right_foot: @tattoo.right_foot, right_forearm: @tattoo.right_forearm, right_hand: @tattoo.right_hand, right_leg: @tattoo.right_leg, right_thigh: @tattoo.right_thigh, tattoo: @tattoo.tattoo, thorax: @tattoo.thorax }
    end

    assert_redirected_to tattoo_path(assigns(:tattoo))
  end

  test "should show tattoo" do
    get :show, id: @tattoo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tattoo
    assert_response :success
  end

  test "should update tattoo" do
    put :update, id: @tattoo, tattoo: { back: @tattoo.back, description: @tattoo.description, front: @tattoo.front, head: @tattoo.head, hip: @tattoo.hip, left_arm: @tattoo.left_arm, left_foot: @tattoo.left_foot, left_forearm: @tattoo.left_forearm, left_hand: @tattoo.left_hand, left_leg: @tattoo.left_leg, left_thigh: @tattoo.left_thigh, neck: @tattoo.neck, right_arm: @tattoo.right_arm, right_foot: @tattoo.right_foot, right_forearm: @tattoo.right_forearm, right_hand: @tattoo.right_hand, right_leg: @tattoo.right_leg, right_thigh: @tattoo.right_thigh, tattoo: @tattoo.tattoo, thorax: @tattoo.thorax }
    assert_redirected_to tattoo_path(assigns(:tattoo))
  end

  test "should destroy tattoo" do
    assert_difference('Tattoo.count', -1) do
      delete :destroy, id: @tattoo
    end

    assert_redirected_to tattoos_path
  end
end
