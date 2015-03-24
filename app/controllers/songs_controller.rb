class SongsController < ApplicationController

  def index
    @songs = current_user.songs.order(release_date: :desc)
    render layout: "feed_layout"
  end

  def show
    @song = Song.find(params[:id])
  end

end
