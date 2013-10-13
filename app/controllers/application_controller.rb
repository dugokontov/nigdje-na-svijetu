class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to root_url
  end

  before_filter :authorization_check

  def authorization_check
    @user = User.find(session[:id]) if (@user.nil? && session[:id])
  end

  def current_user
    @user
  end
end
