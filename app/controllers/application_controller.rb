class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user  

private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

=begin
protected
  def current_user
    load_current_user
  end

  def load_current_user
    session[:user_id] ||= params[:viewer_id]
    @user_id = session[:user_id]
    @user = User.find_or_initialize_by_user_id(@user_id.to_s)
    @user.access_token = params[:access_token] if @user.access_token.blank?
    @user.save
    @user
  end
=end
end
