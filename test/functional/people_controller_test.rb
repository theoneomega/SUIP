require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { addictions: @person.addictions, alias: @person.alias, complexion: @person.complexion, heigh: @person.heigh, name: @person.name, organization_id: @person.organization_id, phone: @person.phone, rank: @person.rank, recidence: @person.recidence, record: @person.record, sex: @person.sex, weight: @person.weight }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    put :update, id: @person, person: { addictions: @person.addictions, alias: @person.alias, complexion: @person.complexion, heigh: @person.heigh, name: @person.name, organization_id: @person.organization_id, phone: @person.phone, rank: @person.rank, recidence: @person.recidence, record: @person.record, sex: @person.sex, weight: @person.weight }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
