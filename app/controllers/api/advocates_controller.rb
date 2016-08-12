class Api::AdvocatesController < ApplicationController

  def create
    # require 'pry'; binding.pry
    advocate = current_user.advocates.create(advocate_params)
    Advocation.create(company_id: params[:company_id], advocate_id: advocate.id)

    render partial: 'advocates/advocate_row', locals: { advocate: advocate }, layout: false

    # render json: advocate

  end


  private

  def advocate_params
    params.require(:advocate).permit(:first_name, :last_name, :email, :phone_number, :linkedin)
  end


end