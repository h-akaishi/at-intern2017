class BlogsController < ApplicationController
  def index
    @blog = Blog.new
    @blogs = Blog.page(params[:page]).per(5).order("created_at desc")
  end

  def create
    @blog = Blog.create(create_params)
    redirect_to :root
  end

  def show
    @blog = Blog.find(params[:id])
    @comments = @blog.replies.order("created_at desc")
    @reply = Reply.new
  end

  private
  def create_params
    params.require(:blog).permit(:body)
  end
end
