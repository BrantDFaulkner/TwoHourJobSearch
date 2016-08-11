class AdvocatesController < ApplicationController

  def new
    @advocate = Advocate.new
  end

  def create
    advocate = current_user.advocates.create(advocate_params)
    Advocation.create(advocate_id: advocate.id, company_id: params[:company_id])
    redirect_to companies_path
  end

  def show
    @advocate = advocate.find_by_id(params[:advocate_id])
  end

private

  def advocate_params
    params.require(:advocate).permit(:first_name, :last_name, :phone_number, :email, :linkedin)
  end

end