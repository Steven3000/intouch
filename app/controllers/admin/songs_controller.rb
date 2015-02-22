class Admin::SongsController < Admin::BaseController

  def index
    #@songs = Song.all
    @songs = Song.order(:created_at).page(params[:page]).per(10)
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    @artists = Artist.all
  end

  def create
    @artists = Artist.all
    @song = Song.new
    @song.artist_id = params[:artist_id]
    @song.artist = params[:artist]
    @song.title = params[:title]
    @song.artwork = params[:artwork]
    @song.features = params[:features]
    @song.producer = params[:producer]
    @song.album = params[:album]
    @song.release_date = params[:release_date]
    @song.download_link = params[:download_link]
    @song.embedded_code = params[:embedded_code]
    @song.itunes = params[:itunes]
    @song.google = params[:google]
    @song.amazon = params[:amazon]
    @song.spotify = params[:spotify]

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
    @artists = Artist.all

    @song = Song.find(params[:id])
    @song.artist_id = params[:artist_id]
    @song.title = params[:title]
    @song.artwork = params[:artwork]
    @song.features = params[:features]
    @song.producer = params[:producer]
    @song.album = params[:album]
    @song.release_date = params[:release_date]
    @song.download_link = params[:download_link]
    @song.embedded_code = params[:embedded_code]
    @song.itunes = params[:itunes]
    @song.google = params[:google]
    @song.amazon = params[:amazon]
    @song.spotify = params[:spotify]

    if @song.save
      redirect_to "/admin/songs", :notice => "Song updated successfully."
    else
      render '/admin/edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to "/admin/songs", :notice => "Song deleted."
  end
end
