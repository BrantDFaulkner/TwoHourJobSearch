class AdvocatesController < ApplicationController

  def new
    @advocate = Advocate.new
  end

  def create
    contact = Advocate.create(advocate_params)
    redirect_to advocate_path(advocate)
  end

  def show
    @advocate = advocate.find_by_id(params[:advocate_id])
  end

private

  def advocate_params
    params.require(:advocate).permit(:first_name, :last_name, :phone_number, :email)
  end

end