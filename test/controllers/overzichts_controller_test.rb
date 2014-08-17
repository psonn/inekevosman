require 'test_helper'

class OverzichtsControllerTest < ActionController::TestCase
  setup do
    @overzicht = overzichts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:overzichts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create overzicht" do
    assert_difference('Overzicht.count') do
      post :create, overzicht: { body: @overzicht.body, title: @overzicht.title }
    end

    assert_redirected_to overzicht_path(assigns(:overzicht))
  end

  test "should show overzicht" do
    get :show, id: @overzicht
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @overzicht
    assert_response :success
  end

  test "should update overzicht" do
    patch :update, id: @overzicht, overzicht: { body: @overzicht.body, title: @overzicht.title }
    assert_redirected_to overzicht_path(assigns(:overzicht))
  end

  test "should destroy overzicht" do
    assert_difference('Overzicht.count', -1) do
      delete :destroy, id: @overzicht
    end

    assert_redirected_to overzichts_path
  end
end
