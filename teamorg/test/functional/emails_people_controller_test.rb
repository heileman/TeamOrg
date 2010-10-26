require 'test_helper'

class EmailsPeopleControllerTest < ActionController::TestCase
  setup do
    @emails_person = emails_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emails_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emails_person" do
    assert_difference('EmailsPerson.count') do
      post :create, :emails_person => @emails_person.attributes
    end

    assert_redirected_to emails_person_path(assigns(:emails_person))
  end

  test "should show emails_person" do
    get :show, :id => @emails_person.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @emails_person.to_param
    assert_response :success
  end

  test "should update emails_person" do
    put :update, :id => @emails_person.to_param, :emails_person => @emails_person.attributes
    assert_redirected_to emails_person_path(assigns(:emails_person))
  end

  test "should destroy emails_person" do
    assert_difference('EmailsPerson.count', -1) do
      delete :destroy, :id => @emails_person.to_param
    end

    assert_redirected_to emails_people_path
  end
end
