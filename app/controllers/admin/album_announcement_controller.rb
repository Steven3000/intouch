class Admin::AlbumAnnouncementController < Admin::BaseController

  def create
    @album = Album.find(params[:id])

    @album.artist.subscriptions.each do |suba|
      AnnouncementMailer.announce_album(sub.user, @album)
  end
end

