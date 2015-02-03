class FeedsController < ApplicationController

  def index
    @feeds = Feed.all
  end

  def show
    @feed = Feed.find(params[:id])
  end

  def new
    @feed = Feed.new
  end

  def create
    @feed = Feed.new
    @feed.artist = params[:artist]
    @feed.song = params[:song]

    if @feed.save
      redirect_to "/feeds", :notice => "Feed created successfully."
    else
      render 'new'
    end
  end

  def edit
    @feed = Feed.find(params[:id])
  end

  def update
    @feed = Feed.find(params[:id])

    @feed.artist = params[:artist]
    @feed.song = params[:song]

    if @feed.save
      redirect_to "/feeds", :notice => "Feed updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @feed = Feed.find(params[:id])

    @feed.destroy

    redirect_to "/feeds", :notice => "Feed deleted."
  end

end
