class UserRegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, :only => [:create]

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :zip_code, :age) }
  end

  def after_sign_up_path_for(resource)
    '/subscriptions'
  end

end
