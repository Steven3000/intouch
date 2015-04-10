class Admin::BaseController < ApplicationController

  http_basic_authenticate_with name: "steven", password: "secret"
  skip_before_action :authenticate_user!

  render layout: "admin_layout"

end
