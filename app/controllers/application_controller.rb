class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login

protected

  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @_current_user ||= session[:current_user]
  end
end
