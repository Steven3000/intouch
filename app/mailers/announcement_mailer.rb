class AnnouncementMailer < ApplicationMailer

  def announce_song(user, song)
    @song = song
    @user = user

    mail(to: @user.email, subject: 'A new song by <%= @song.artist.name %> ')
  end

  def announce_album(user, ablbum)
    @song = song
    @user = user

    mail(to: @user.email, subject: 'A new album by <%= @album.artist.name %> ')
  end
end
