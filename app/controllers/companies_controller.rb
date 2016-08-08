class CompaniesController < ApplicationController

  def index
    @companies = Company.includes(:contacts)
  end

  def new
    @company = Company.new
  end

  def create
    @company = current_user.companies.new(company_params)
    @company.advocate = "TBD"
    @company.save
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