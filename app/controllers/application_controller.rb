class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_current_user
  helper_method :current_user  

protected
  def current_user
    @user ||= load_current_user
  end

  def load_current_user
    session[:auth_key] ||= params[:auth_key]
    @auth_key ||= session[:auth_key]
    @user = User.find_or_create_by_auth_key(@auth_key)
  end
end
