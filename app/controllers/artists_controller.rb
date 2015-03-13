class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    render layout: "feed"
  end
end
