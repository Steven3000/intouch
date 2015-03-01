class SongsController < ApplicationController

  def index
    @songs = Song.all.order(release_date: :desc)
  end

  def show
    @song = Song.find(params[:id])
  end

end
