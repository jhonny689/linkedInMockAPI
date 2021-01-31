class Api::V1::People::CompaniesController < Api::V1::People::BaseController
  before_action :set_company

  def update
    @company_person = @person.company_people.active.last
    @new_company = @person.company_people.new(company_person_params)

    start_date = company_person_params[:start_date].to_date

    if @new_company.save && @company_person
      @company_person.update(end_date: start_date - 1.day)
    end

    render json: { success: true }

  end

  private

  def set_company
    @company = Company.find params[:id]
  end

  def company_person_params
    params.require(:company_person).permit(:start_date).merge(person_id: @person.id, company_id: @company.id)
  end

end