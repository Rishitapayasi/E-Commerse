class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # before_filter :configure_permitted_parameters, if: :Users::RegistrationsController 
 

 protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:role) }
  # end

  def after_sign_up_path_for(resource)
    homes_dashboard_path
  end
end
