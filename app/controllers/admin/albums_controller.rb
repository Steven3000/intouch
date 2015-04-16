class Admin::AlbumsController < Admin::BaseController

  def index
    @albums = Album.order(created_at: :desc).page(params[:page]).per(15)
  end

  def show
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def create
    #@album  = Album.new(params[:name])
    @album  = Album.new(album_params)

  #   if @album.save
  #     @artist = @album.artist
  #     @album = @artist.album
  #   end
  # end
  respond_to do |format|
      if @album.save
        format.html { redirect_to admin_albums_url, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to admin_albums_url, notice: 'album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:name, :artist_id, :release_date, :download_link, :embedded_code, :itunes, :google, :amazon, :spotify, :youtube)
  end

end
