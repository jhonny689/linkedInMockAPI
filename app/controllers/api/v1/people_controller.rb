class Api::V1::PeopleController < Api::V1::BaseController
  before_action :set_people, only: :index
  before_action :set_person, except: :index

  # GET /people
  # GET /people.json
  def index
    # persons = Person.all
    # render json: persons, include: :city, except: :city_id
    render json: @people, include: :city, except: :city_id
  end

  def show
    # person = Person.find params[:id]
    render json: @person, include: :city, except: :city_id
  end

  private

  def set_people
    @people = Person.all.includes(:city, companies: :city).page(params[:page])
    # byebug
  end

  def set_person
    @person = Person.find(params[:id]).includes(:city, companies: :city)
  end
end

