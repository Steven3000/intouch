class AnnouncementMailer < ApplicationMailer

  def announce_song(user, song)
    @song = song
    @user = user

    mail(to: @user.email, subject: "TEST #{@song.artist.name} - NEW MUSIC! - #{@song.title}")
  end

  def announce_album(user, album)
    @album = album
    @user = user

    mail(to: @user.email, subject: "TEST #{@album.artist.name} - NEW MUSIC! - #{@album.name}")
  end

end
