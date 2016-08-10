class CompaniesController < ApplicationController
  before_filter :require_user

  def index
    @companies = env['companies'].prioritized
  end

  def new
    @company = Company.new
  end

  def create
    @company = env['companies'].create(company_params)
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