class BlogsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @blog = Blog.find(params[:id])
  end

end
