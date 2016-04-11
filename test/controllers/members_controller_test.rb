require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { about: @member.about, bust: @member.bust, categories_id: @member.categories_id, city: @member.city, date_of_birth: @member.date_of_birth, diplay_name: @member.diplay_name, disciplines_id: @member.disciplines_id, email: @member.email, ethnicity_id: @member.ethnicity_id, eyes_id: @member.eyes_id, gender: @member.gender, hair_id: @member.hair_id, heigth: @member.heigth, hips: @member.hips, last_name: @member.last_name, member_type: @member.member_type, name: @member.name, phone: @member.phone, shoes: @member.shoes, waist: @member.waist }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { about: @member.about, bust: @member.bust, categories_id: @member.categories_id, city: @member.city, date_of_birth: @member.date_of_birth, diplay_name: @member.diplay_name, disciplines_id: @member.disciplines_id, email: @member.email, ethnicity_id: @member.ethnicity_id, eyes_id: @member.eyes_id, gender: @member.gender, hair_id: @member.hair_id, heigth: @member.heigth, hips: @member.hips, last_name: @member.last_name, member_type: @member.member_type, name: @member.name, phone: @member.phone, shoes: @member.shoes, waist: @member.waist }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
