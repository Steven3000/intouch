class PageController < ApplicationController

  skip_before_action :authenticate_user!

  def home

  end

  def breakdown

  end

end
