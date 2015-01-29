class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
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
      redirect_to "/songs", :notice => "Song created successfully."
    else
      render 'new'
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

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
      redirect_to "/songs", :notice => "Song updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to "/songs", :notice => "Song deleted."
  end
end
