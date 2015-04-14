class AlbumsController < ApplicationController

  def index
    @albums = current_user.albums.order(release_date: :desc)
    render layout: "feed_layout"
  end

  def show
    @album = Album.find(params[:id])
  end

end
