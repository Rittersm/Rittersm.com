class UserSessionController < ApplicationController

  def create
  @user = User.find_by(username: params[:user][:username])
  if @user
    if @user.authenticate(params[:user][:password])
      session[:username] = @user.username
      redirect_to root_path
    else
      redirect_to root_path
    end
  else
    redirect_to root_path
  end
end

def destroy
  session[:username] = nil
  redirect_back fallback_location: root_path
end

end
