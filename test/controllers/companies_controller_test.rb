require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get api_v1_companies_url, as: :json
    assert_response :success
  end

  test "response attributes" do
    company = companies(:company_1)
    get api_v1_companies_url, as: :json

    json = JSON.parse(response.body)
    company_json = json.first
    assert_equal company.id, company_json["id"]
    assert_equal company.name, company_json["name"]
    assert_equal company.city.name, company_json["city"]["name"]

    assert_response :success
  end
end
