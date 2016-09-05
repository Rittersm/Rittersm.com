class BlogsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_filter :newcontact

  def index
    @blog = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

end
