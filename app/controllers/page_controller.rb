class PageController < ApplicationController

  skip_before_action :authenticate_user!, only: :home

  # def feed
  # end

  # def following
  # end

  def home

  end

  # def show
  # end

  # def signup
  # end
end
