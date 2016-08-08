class CompanyContactsController < ApplicationController

  def new
    @company_contact = CompanyContact.new
    @select_companies = current_user.companies

    @contact = Contact.new

    @contacts = Contact.all

  end

  def create

  end


end