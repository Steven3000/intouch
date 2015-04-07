class Admin::AlbumsController < Admin::BaseController

  def create
    @album  = Album.new(params[:album])

    if @album.save
      @artist = @album.artist
      @albums = @artist.albums
    end
  end

  def new
    @album = Album.new
  end

  def index
    @albums = Album.order(created_at: :desc).page(params[:page]).per(15)
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
    params.require(:album).permit(:artist_id, :name, :release_date)
  end

end
