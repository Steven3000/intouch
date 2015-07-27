class AlbumsController < ApplicationController

  def index
    @albums = current_user.albums.order(release_date: :desc)
    render layout: "feed_layout"

  end

  def show
    @album = Album.find(params[:id])
    # @songs = current_user.song.order(release_date: :desc)
    render layout: "feed_layout"
  end
private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:artist_id)
    end
end
