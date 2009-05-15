class VotesController < ApplicationController
  
  def index
    @votes = Vote.find :all, :order => 'voteable_id DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end
  
  def create
    vote = Vote.new(:vote => true)
    post = Post.find(params[:post_id])
    post.votes << vote
    redirect_to posts_url
  end
  
end