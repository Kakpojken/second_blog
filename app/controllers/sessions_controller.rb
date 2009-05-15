class SessionsController < ApplicationController
  
  filter_parameter_logging :password
  
  def new
    @user = User.new
    @user.username = params[:username]
  end
  
  def create
    if user = User.authenticate(params[:user])
      session[:id] = user.id
      redirect_to posts_url
    else
      flash[:error] = 'Failed to log in'
      redirect_to new_session_url(:username => params[:user][:username])
    end
  end
  
  def destroy
    reset_session
    flash[:message] = 'Logged out'
    redirect_to posts_url
  end
end