class UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_filter :newcontact

  def show
    @blog = Blog.last
  end

  private

  def user_params
    params.permit(:username, :password)
  end

end
