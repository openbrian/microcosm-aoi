class SessionsController < ApplicationController
  skip_before_action :authenticate, :except => [:index, :show]

  def new
  end

  def create
    user = User.create_from_omniauth(request.env["omniauth.auth"])
    session[:user] = user
    destination = session[:original_url] ||= root_url
    redirect_to destination, :notice => "Session started"
  end

  def destroy
    session[:user] = nil
    redirect_to root_url, :notice => "Session stopped"
  end
end
