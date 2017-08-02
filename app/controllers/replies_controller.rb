class RepliesController < ApplicationController
  def create
    @reply = Reply.create(comment: params[:comment], blog_id: params[:blog_id])
    redirect_to "/blogs/#{@reply.blog.id}"
  end

  private
  def reply_params
    params.permit(:comment, :blog_id)
  end
end
