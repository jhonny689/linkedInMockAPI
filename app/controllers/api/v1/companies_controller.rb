class Api::V1::CompaniesController < Api::V1::BaseController
  before_action :set_companies

  # GET /companies
  # GET /companies.json
  def index
  end

  private

  def set_companies
    @companies = Company.all.includes(:city).page(params[:page])
  end
end
