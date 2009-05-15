module SessionsHelper
  
  def logged_in?
    session[:id] != nil
  end
  
end