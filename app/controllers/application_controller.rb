class ApplicationController < ActionController::Base

  helper_method :current_user,
                :logged_in?,
                :redirect_back_or

  private

  def authenticate_user!
    unless current_user
      store_location
      redirect_to login_path, alert: 'Check your credentials'
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
  end
end
