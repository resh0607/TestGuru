class ApplicationController < ActionController::Base

  helper_method :redirect_back_or

  private

  def store_location
    cookies[:forwarding_url] = request.original_url if request.get?
  end

  def redirect_back_or(default)
    redirect_to(cookies[:forwarding_url] || default)
    cookies.delete(:forwarding_url)
  end
end
