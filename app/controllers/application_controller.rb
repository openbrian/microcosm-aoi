class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  before_action :authenticate, :except => [:index, :show]

  private

  def authenticate
    if session['user'].nil?
      session['original_url'] = request.original_url
      redirect_to :sessions_new
    end
  end

  def current_user
    @current_user = User.find_by(id: session[:user]['id']) if session[:user]
  end

  def logged_in?
    current_user != nil
  end

end
