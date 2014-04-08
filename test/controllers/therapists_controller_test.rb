require 'test_helper'

class TherapistsControllerTest < ActionController::TestCase
  setup do
    @therapist = therapists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:therapists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create therapist" do
    assert_difference('Therapist.count') do
      post :create, therapist: { address: @therapist.address, email_address: @therapist.email_address, first_name: @therapist.first_name, gender: @therapist.gender, last_name: @therapist.last_name, nick_name: @therapist.nick_name, phone_number: @therapist.phone_number, ssn: @therapist.ssn, therapist_type: @therapist.therapist_type }
    end

    assert_redirected_to therapist_path(assigns(:therapist))
  end

  test "should show therapist" do
    get :show, id: @therapist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @therapist
    assert_response :success
  end

  test "should update therapist" do
    patch :update, id: @therapist, therapist: { address: @therapist.address, email_address: @therapist.email_address, first_name: @therapist.first_name, gender: @therapist.gender, last_name: @therapist.last_name, nick_name: @therapist.nick_name, phone_number: @therapist.phone_number, ssn: @therapist.ssn, therapist_type: @therapist.therapist_type }
    assert_redirected_to therapist_path(assigns(:therapist))
  end

  test "should destroy therapist" do
    assert_difference('Therapist.count', -1) do
      delete :destroy, id: @therapist
    end

    assert_redirected_to therapists_path
  end
end
