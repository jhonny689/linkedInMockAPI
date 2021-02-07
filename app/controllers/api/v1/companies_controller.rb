class Api::V1::CompaniesController < Api::V1::BaseController
  before_action :set_companies, only: :index
  before_action :set_company, except: :index

  # GET /companies
  # GET /companies.json
  def index
    # print companies
    # byebug

    render json: @companies, include: :city, except: :city_id
  end

  # GET /companies/[id]
  def show
    # company = Company.find params[:id]
    # debugger;
    render json: @company.to_json(include: :city, except: :city_id)
  end

  private

  def set_companies
    if params[:city]
      @companies = Company.includes(:city).where(city:{name: params[:city]})
      # byebug
    else
      @companies = Company.all.includes(:city).page(params[:page])
    end
  end

  def set_company
    @company = Company.find(params[:id])
  end
end
