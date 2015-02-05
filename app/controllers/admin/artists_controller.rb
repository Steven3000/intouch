class Admin::ArtistsController < ApplicationController
  def index
    @artists = Artist.all
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
    @artist.website = params[:website]
    @artist.record_label = params[:record_label]

    if @artist.save
      redirect_to "/artists", :notice => "Artist created successfully."
    else
      render 'new'
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.name = params[:name]
    @artist.picture = params[:picture]
    @artist.website = params[:website]
    @artist.record_label = params[:record_label]

    if @artist.save
      redirect_to "/artists", :notice => "Artist updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to "/artists", :notice => "Artist deleted."
  end
end
