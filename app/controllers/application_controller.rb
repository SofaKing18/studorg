class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  before_action :set_locale
 
  def set_locale
    I18n.locale = params[:ru]
  end
end
