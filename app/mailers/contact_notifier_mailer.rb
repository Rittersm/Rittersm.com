class ContactNotifierMailer < ApplicationMailer

  def contact_email(contact)
    @contact = contact
    mail( :to => "rittersm@gmail.com", :subject => 'New Contact' )
  end

end
