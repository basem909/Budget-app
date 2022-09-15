class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_out_path_for(_resource)
    flash[:notice] = "you're logged out"
    new_user_session_path
  end

  def configure_permitted_parameters
    attributes = %i[first_name family_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
