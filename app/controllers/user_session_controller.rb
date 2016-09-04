class UserSessionController < ApplicationController

  def create
  @user = User.find_by(username: params[:user][:username])
  if @user
    if @user.authenticate(params[:user][:password])
      session[:username] = @user.username
      render json: @user, status: :accepted
    else
      render json: {error: "Incorrect Password"}, status: :unprocessable_entity
    end
  else
    render json: {error: "User Not Found"}, status: :unprocessable_entity
  end
end

def destroy
  session[:username] = nil
  redirect_back fallback_location: root_path
end

end
