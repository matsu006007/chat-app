class ApplicationController < ActionController::Base
  before_action :authecticate_user!
  before_action :configure_permited_parametaers, if: :devise_controller?

  private
  def configure_permited_parametaers
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
end
