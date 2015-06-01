class AnnouncementMailer < ApplicationMailer

  def announce_song(user, song)
    @song = song
    @user = user

    mail(to: @user.email, subject: "#{@song.artist.name} - NEW MUSIC! - #{@song.title}")
  end

  def announce_album(user, album)
    @album = album
    @user = user

    mail(to: @user.email, subject: "#{@album.artist.name} - NEW MUSIC! - #{@album.name}")
  end

  # def welcome_user(user)
  #   @user = user

  #   mail(to: @user.email, subject: "#{@user.username} Thank You for Joining Ntouch")
  # end
end
