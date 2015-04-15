class Admin::AlbumsController < Admin::BaseController

  def index
    @albums = Album.order(created_at: :desc).page(params[:page]).per(15)
  end

  def new
    @album = Album.new
  end

  def create
    @album  = Album.new(params[:name])

    if @album.save
      @artist = @album.artist
      # @album = @artist.album
    end
  end


  def edit
    @Album = Album.find(params[:id])
  end

  def update
    @Album = Album.find(params[:id])
    @Album.update(Albums_params)

    if @Album.save
      redirect_to "/admin/Albums", :notice => "Album updated successfully."
    else
      render '/admin/edit'
    end
  end

  def destroy
        @Album = Album.find(params[:id])
       @Album.destroy

    redirect_to "/admin/Albums", :notice => "Album deleted."
  end


  def set_album
    @album = Album.find(params[:id])
  end

  def albums_params
    params.require(:album).permit(:name, :artist_id, :release_date, :download_link, :embedded_code, :itunes, :google, :amazon, :spotify, :youtube)
  end

end
