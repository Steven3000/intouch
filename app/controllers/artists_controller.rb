class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    layout: "feed_layout"
  end
end
