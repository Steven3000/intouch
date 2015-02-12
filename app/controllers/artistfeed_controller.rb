class ArtistfeedController < ApplicationController


  def show
    @songs = Song.all.order(release_date: :desc)
  end
end
