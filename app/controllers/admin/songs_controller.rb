class Admin::SongsController < Admin::BaseController

  before_action :set_albums, only: [:new, :create, :edit, :update]

  def index
    @songs = Song.order(created_at: :desc).page(params[:page]).per(30)

    if params[:search].present?
    @songs = Song.where("title, ilike ?", "%#{params[:search]}%")
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(songs_params)

    if @song.save
      redirect_to "/admin/songs", :notice => "Song created successfully."
    else
      render '/admin/songs/new'
    end
  end

  def edit
    @song = Song.find(params[:id])
    @artists = Artist.all
  end

  def update
    @song = Song.find(params[:id])
    @song.update(songs_params)

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

  def announcement
    @song = Song.find(params[:id])

    @song.artist.subscriptions.each do |subb|
      AnnouncementMailer.announce_song(subb.user, @song).deliver_now
    end

    flash[:notice] = "Announcement has been sent"
    redirect_to admin_songs_path
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def set_albums
      @albums = Album.all
    end

    def songs_params
      params.require(:song).permit(:artist_id, :artwork, :album_id, :title, :features, :producer, :album_title, :release_date, :download_link, :embedded_code, :itunes, :google, :amazon, :spotify, :youtube)
    end

end
