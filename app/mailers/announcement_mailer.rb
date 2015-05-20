class AnnouncementMailer < ApplicationMailer

  def announce_song(user, song)
    @song = song
    @user = user

    mail(to: @user.email, subject: "<%= @song.artist.name %> recently released '<%= @song.title %>' ")
  end

  def announce_album(user, ablbum)
    @song = song
    @user = user

    mail(to: @user.email, subject: "<%= @song.artist.name %> has recently released <%= @album.name %>")
  end
end
