class ApplicationController < ActionController::Base

  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception
  before_action :configure_devise_parameters, if: :devise_controller?


  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :email, :password, :password_confirmation) }
  end


  private

  def user_not_authorized
    flash[:alert] = "Vous n'avez pas les droits"
    redirect_to (request.referrer || root_path)
  end

end
