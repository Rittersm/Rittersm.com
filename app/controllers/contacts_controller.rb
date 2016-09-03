class ContactsController < ApplicationController

  def create
    @contact = Contact.new
    if @contact.save
      render json: @contact, status: :created
    else
      render json: @contact.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contacts).permit(:name, :email, :phone, :company, :message)
  end

end
