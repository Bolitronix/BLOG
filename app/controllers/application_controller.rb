class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :name, :phone, :age])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :name, :avatar,:phone, :bio, :age])
  end
end
