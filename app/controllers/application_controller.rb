class ApplicationController < ActionController::Base

  before_action :set_locale

  helper_method :redirect_back_or

  def default_url_options
     { lang: (I18n.locale if I18n.default_locale != I18n.locale) } 
  end

  private

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end

  def store_location
    cookies[:forwarding_url] = request.original_url if request.get?
  end

  def redirect_back_or(default)
    redirect_to(cookies[:forwarding_url] || default)
    cookies.delete(:forwarding_url)
  end
end
