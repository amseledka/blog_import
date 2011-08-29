class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_current_user
  helper_method :current_user  

protected
  def current_user
    load_current_user
  end

  def load_current_user
    session[:user_id] = params[:user_id]
    @user_id = session[:user_id]
    @user = User.find_or_create_by_user_id(@user_id)
  end
end
