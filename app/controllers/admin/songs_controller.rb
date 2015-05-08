class Admin::SongsController < Admin::BaseController

  before_action :set_albums, only: [:new, :create, :edit, :update]

  def index
    @songs = Song.order(created_at: :desc).page(params[:page]).per(15)
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
      notify_subscribers(@song)
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

  private

    def notify_subscribers(song)
      puts 'test'
      subscriptions = Subscription.where(artist_id: song.artist.id)
      subscriptions.each do |sub|
        AnnouncementMailer.announce_song(sub.user, song).deliver
        puts 'test'
      end
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def set_albums
      @albums = Album.all
    end

    def songs_params
      params.require(:song).permit(:artist_id, :album_id, :title, :features, :producer, :album_title, :release_date, :download_link, :embedded_code, :itunes, :google, :amazon, :spotify, :youtube)
    end

end
