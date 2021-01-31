class Api::V1::PeopleController < Api::V1::BaseController
  before_action :set_people

  # GET /people
  # GET /people.json
  def index
  end

  def show
    @person = Person.find params[:id]
  end

  private

  def set_people
    @people = Person.all.includes(:city, companies: :city).page(params[:page])
  end
end

