class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    if session[:username]
      @current_user ||= User.find_by(username: session[:username])
    end
    @current_user
  end

  def newcontact
    @contact = Contact.new
  end

end
