class Api::V1::CitiesController < Api::V1::BaseController
  before_action :set_cities

  # GET /cities
  # GET /cities.json
  def index
  end

  private

  def set_cities
    @cities = City.all.page(params[:page])
  end
end
