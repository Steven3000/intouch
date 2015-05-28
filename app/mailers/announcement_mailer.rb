class AnnouncementMailer < ApplicationMailer

  def announce_song(user, song)
    @song = song
    @user = user

    mail(to: @user.email, subject: "#{@song.artist.name} just released #{@song.title}")
  end

  def announce_album(user, ablbum)
    @song = song
    @user = user

    mail(to: @user.email, subject: "#{@album.artist.name} just released #{@album.name}")
  end
end
