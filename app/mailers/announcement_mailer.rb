class AnnouncementMailer < ApplicationMailer

  def announce_song(song)
      @song = song
      #@announcement = song.announcement
      #@artist = song.artist_id
      @subscriptions = Subscription.where(artist_id: song.artist.id)
      @user = @subscriptions.first.user
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
