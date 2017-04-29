 class ApplicationController < ActionController::Base
 	include ApplicationHelper
 	helper_method :current_user

  protect_from_forgery with: :exception

  def authenticate_user!
    unless session[:user_id]
      redirect_to root_path
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
