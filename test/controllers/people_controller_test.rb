require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:people_1)
  end

  test "should get index" do
    get api_v1_people_url, as: :json
    assert_response :success
  end

  test "response attributes" do
    get api_v1_people_url, as: :json

    json = JSON.parse(response.body)
    person_json = json.first

    assert_equal @person.id, person_json["id"]
    assert_equal @person.name, person_json["name"]
    assert_equal @person.email, person_json["email"]
    assert_equal @person.city.name, person_json["city"]["name"]

    assert_response :success
  end
end
