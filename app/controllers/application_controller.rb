class ApplicationController < ActionController::Base

  helper_method :redirect_back_or

  def after_sign_in_path_for(user)
    if user.admin?
      admin_tests_path
    else
      root_path
    end
  end

  private

  def store_location
    cookies[:forwarding_url] = request.original_url if request.get?
  end

  def redirect_back_or(default)
    redirect_to(cookies[:forwarding_url] || default)
    cookies.delete(:forwarding_url)
  end
end
