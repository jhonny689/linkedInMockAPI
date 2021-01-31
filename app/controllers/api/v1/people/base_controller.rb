class Api::V1::People::BaseController < Api::V1::BaseController
  before_action :set_person

  private

  def set_person
    @person = Person.find params[:person_id]
  end

end
