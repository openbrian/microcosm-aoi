class SessionsController < ApplicationController
  def create
    user = User.create_from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Session started"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Session stopped"
  end
end
