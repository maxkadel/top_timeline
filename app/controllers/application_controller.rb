class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:surgery_date])
    devise_parameter_sanitizer.permit(:account_update, keys: [:surgery_date])
  end
end
