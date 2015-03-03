class Admin::SongsController < Admin::BaseController
  def index
    #@songs = Song.all
    @songs = Song.order(created_at: :desc).page(params[:page]).per(15)
   # @songs = Song.search(params[:search])
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(songs_params)
  #   @artists = Artist.all
  #   @song = Song.new
  #   @song.artist_id = params[:artist_id]
  #   @song.title = params[:title]
  #   @song.features = params[:features]
  #   @song.producer = params[:producer]
  #   @song.album = params[:album]
  #   @song.release_date = params[:release_date]
  #   @song.download_link = params[:download_link]
  #   @song.embedded_code = params[:embedded_code]
  #   @song.itunes = params[:itunes]
  #   @song.google = params[:google]
  #   @song.amazon = params[:amazon]
  #   @song.spotify = params[:spotify]
  #   @song.youtube = params[:youtube]

    if @song.save
      redirect_to "/admin/songs", :notice => "Song created successfully."
    else
      render '/admin/new'
    end
  end

  def edit
    @song = Song.find(params[:id])
    @artists = Artist.all
  end

  def update
    @song = Song.update(songs_params)

    # @song = Song.find(params[:id])
    # @song.artist = Artist.find(params[:artist_id])
    # @song.title = params[:title]
    # @song.features = params[:features]
    # @song.producer = params[:producer]
    # @song.album = params[:album]
    # @song.release_date = params[:release_date]
    # @song.download_link = params[:download_link]
    # @song.embedded_code = params[:embedded_code]
    # @song.itunes = params[:itunes]
    # @song.google = params[:google]
    # @song.amazon = params[:amazon]
    # @song.spotify = params[:spotify]
    # @song.youtube = params[:youtube]


    if @song.save
      redirect_to "/admin/songs", :notice => "Song updated successfully."
    else
      render '/admin/edit'
    end
  end

  def destroy
    @song = Song.destroy(songs_params)

    redirect_to "/admin/songs", :notice => "Song deleted."
  end

  private

    def set_song
      @song = Song.find(params[:id])
    end

    def songs_params
      params.require(:song).permit(:artist_id, :title, :features, :producer, :album, :release_date, :download_link, :embedded_code, :itunes, :google, :amazon, :spotify, :youtube)
    end

end
