class Admin::BaseController < ApplicationController

  http_basic_authenticate_with name: "steven", password: Rails.application.secrets.admin_password
  skip_before_action :authenticate_user!

  layout 'admin_layout'

end
