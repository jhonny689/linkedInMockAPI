require 'test_helper'

module People
  class CompaniesControllerTest < ActionDispatch::IntegrationTest

    test "should add a new job and end the old one" do
      person_id = people(:people_1)
      company_id = companies(:company_1)

      json = {
          company_person: {
              start_date: Date.today
          }
      }

      url = api_v1_person_company_url(
          person_id: person_id,
          id: company_id
      )

      put url, as: :json, params: json

      result = JSON.parse(response.body)

      assert result['success']
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
end