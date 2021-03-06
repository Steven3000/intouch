class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!


  # for heroku addon rollbar
  # after_validation :report_validation_errors_to_rollbar

  layout 'Unify'

  def after_sign_in_path_for(resource)
    albums_path
  end

  MiniMagick.configure do |config|
  config.cli = :graphicsmagick
  config.timeout = 5
  end


end
