class UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_filter :newcontact

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to root_path
  #   else
  #     redirect_to root_path
  #   end
  # end

  def show
    @blog = Blog.find_by(status: "Active")
  end

  private

  def user_params
    params.permit(:username, :password)
  end

end
