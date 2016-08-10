class Api::CompaniesController < ApplicationController
  before_filter :require_user

  def update
    company = Company.find_by_id(params[:company_id])
    company.update(company_params)
    render json: company
  end

  private

  def company_params
    params.require(:company).permit(:advocate, :motivation, :posting)
  end

end