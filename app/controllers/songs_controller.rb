class SongsController < ApplicationController

  def index
    @songs = current_user.songs.order(release_date: :desc)
    render layout: "feed_layout"
  end

  def show
    @song = Song.find(params[:id])
    render layout: "feed_layout"
  end


private


    def set_song
      @song = Song.find(params[:id])
    end

    def songs_params
      params.require(:song).permit(:artist_id, :song_id, :title, :features, :producer, :album_title, :release_date, :download_link, :embedded_code, :itunes, :google, :amazon, :spotify, :youtube)
    end

end
