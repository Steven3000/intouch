class Admin::ArtistsController < Admin::BaseController

  def index
    @artists = Artist.order(created_at: :desc).page(params[:page]).per(10)
   # @artists = Artist.search(params[:search])
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artists_params)

    if @artist.save
      redirect_to "/admin/artists", :notice => "Artist created successfully."
    else
      render '/admin/new'
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artists_params)


    if @artist.save
      redirect_to "/admin/artists", :notice => "Artist updated successfully."
    else
      render '/admin/edit'
    end
  end

  def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
        @subsciption.artist.destroy
    redirect_to "/admin/artists", :notice => "Artist deleted."
  end

    private

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artists_params
      params.require(:artist).permit(:name,
        :website,
        :avatar,
        :soundcloud_username,
        :pic,
        :record_label)
    end

end
