class Admin::AlbumsController < Admin::BaseController

  def create
    @album  = Album.new(params[:album])

    if @album.save
      @artist = @album.artist
      @albums = @artist.albums
    end
  end

  def index
  end

  def set_album
    @album = Album.find(params[:id])
  end

  def albums_params
    params.require(:album).permit(:artist_id, :name)
  end

end
