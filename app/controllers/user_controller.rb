class UserController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @user = User.new
    if @user.save
      redirect_to root_path
    end
  end

  def show
    @blogs = Blog.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
