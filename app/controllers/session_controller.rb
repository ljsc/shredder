class SessionController < ApplicationController
  skip_before_filter :require_login

  def new
  end

  def create
    session[:current_user] = request.env['omniauth.auth']['user_info']['name']
    flash.notice = "Welcome to Shredder, #{current_user}!"
    redirect_to questions_path
  end
end
