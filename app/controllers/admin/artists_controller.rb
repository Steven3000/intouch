class Admin::ArtistsController < Admin::BaseController

  def index
    #@artists = Artist.all
    @artists = Artist.order(:created_at).page(params[:page]).per(10)
  end


  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:name]
    @artist.picture = params[:picture]
    @artist.record_label = params[:record_label]

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

    @artist.name = params[:name]
    @artist.picture = params[:picture]
    @artist.record_label = params[:record_label]

    if @artist.save
      redirect_to "/admin/artists", :notice => "Artist updated successfully."
    else
      render '/admin/edit'
    end
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to "/admin/artists", :notice => "Artist deleted."
  end
end
