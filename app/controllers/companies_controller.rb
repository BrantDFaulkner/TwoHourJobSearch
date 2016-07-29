class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = current_user.companies.create(company_params)
    redirect_to companies_path
  end

private

  def company_params
    params.require(:company).permit(:name, :motivation)
  end


end