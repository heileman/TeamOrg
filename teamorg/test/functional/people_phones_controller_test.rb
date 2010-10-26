require 'test_helper'

class PeoplePhonesControllerTest < ActionController::TestCase
  setup do
    @people_phone = people_phones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people_phones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create people_phone" do
    assert_difference('PeoplePhone.count') do
      post :create, :people_phone => @people_phone.attributes
    end

    assert_redirected_to people_phone_path(assigns(:people_phone))
  end

  test "should show people_phone" do
    get :show, :id => @people_phone.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @people_phone.to_param
    assert_response :success
  end

  test "should update people_phone" do
    put :update, :id => @people_phone.to_param, :people_phone => @people_phone.attributes
    assert_redirected_to people_phone_path(assigns(:people_phone))
  end

  test "should destroy people_phone" do
    assert_difference('PeoplePhone.count', -1) do
      delete :destroy, :id => @people_phone.to_param
    end

    assert_redirected_to people_phones_path
  end
end
