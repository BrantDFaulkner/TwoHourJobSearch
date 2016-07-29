class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.create(contact_params)
    redirect_to contact_path(contact)
  end

  def show
    @contact = Contact.find_by_id(params[:contact_id])
  end

private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :email)
  end

end