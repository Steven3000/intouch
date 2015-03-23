class SongsController < ApplicationController

  def index
    @songs = current_user.song.artist.subscription.all.order(release_date: :desc)
    render layout: "feed_layout"
  end

  def show
    @song = Song.find(params[:id])
  end

end
