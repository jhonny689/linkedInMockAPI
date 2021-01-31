require 'test_helper'

class CitiesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get api_v1_cities_url, as: :json
    assert_response :success
  end

  test "response attributes" do
    get api_v1_cities_url, as: :json

    json = JSON.parse(response.body)
    city_json = json.first

    @city = cities(:city_1)
    assert_equal @city.id, city_json["id"]
    assert_equal @city.name, city_json["name"]
    assert_equal @city.state, city_json["state"]

    assert_response :success
  end

end
