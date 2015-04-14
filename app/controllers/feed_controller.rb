class FeedController < ApplicationController

  def index
    albums = Album.where(artist: current_user.artists).order(:release_date).to_a
    songs  = Song.where(artist: current_user.artists, album: nil).order(:release_date).to_a
    @feed = albums | songs
  end

end


