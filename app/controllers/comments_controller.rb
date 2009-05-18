class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.post_id = params[:post_id]
    
    if @comment.save
      #CommentMailer.deliver_comment_confirmation(@comment)
      flash[:notice] = "Your comment was saved!"
    else
      flash[:notice] = "Sorry, there was a problem."
    end
    redirect_to post_url(@comment.post)
  end
  
end
