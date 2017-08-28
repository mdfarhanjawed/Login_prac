class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in? #so that we can use in view

  def current_user
  	@current_user ||= User.find_by_id(session[:user_id]) if session[:user_id] #first time only User.. will work and assign to current user
  end

  def logged_in?
  	!!current_user
  end

  def authenticate_user
  	unless logged_in?  		
  		flash[:notice] = "Please, Login!"    
  		redirect_to login_path
  	end
  end  
end
