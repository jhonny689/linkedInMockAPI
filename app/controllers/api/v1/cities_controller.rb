class Api::V1::CitiesController < Api::V1::BaseController
  
  before_action :set_cities, only: :index

  # GET /cities
  # GET /cities.json
  def index
    
    render json: @cities
  end

  private

  def set_cities
    @cities = City.all.page(params[:page])
  end
end
