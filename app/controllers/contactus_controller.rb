class ContactusController < ApplicationController
  def create
    contacts = Contact.new(contact_params)
    flash[:success] = "Success"
    redirect_to '/'
  end

  def contact_params
    params.require(:contacts).permit(:name, :address, :message)
  end
end
