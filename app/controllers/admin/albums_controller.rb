class Admin::AlbumsController < Admin::BaseController



  def index
    @albums = Album.order(created_at: :desc).page(params[:page]).per(20)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album  = Album.new(album_params)

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

  def edit
    @album = Album.find(params[:id])
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

  def announcement
    @album = album.find(params[:id])

    @album.artist.subscriptions.each do |suba|
      AnnouncementMailer.announce_album(suba.user, @album).deliver_now
    end

    flash[:notice] = "Announcement has been sent"
    redirect_to admin_albums_path
  end


  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:name, :artist_id, :release_date, :download_link, :embedded_code, :itunes, :google, :amazon, :spotify, :youtube)
  end

end
