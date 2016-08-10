class CompaniesController < ApplicationController
  before_filter :require_user

  def index
    @companies = Company.prioritize(current_user.companies.includes(:contacts))
  end

  def new
    @company = Company.new
  end

  def create
    @company = current_user.companies.create(company_params)
    redirect_to companies_path
  end

  def show
    @company = Company.find_by_id(params[:company_id])
    session[:company_id] = @company.id
  end

private

  def company_params
    params.require(:company).permit(:name)
  end


end