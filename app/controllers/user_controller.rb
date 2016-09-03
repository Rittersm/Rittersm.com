class UserController < ApplicationController

  def show
    @blogs = Blog.all
  end

end
