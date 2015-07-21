class SoundcloudCheckerJob < ActiveJob::Base
  queue_as :default

  def perform()
    client = SoundCloud.new(:client_id => "9d4135629ce835779f3b5e3b677c38b1")
    new_tracks = []
    Artist.where.not(soundcloud_username: nil).each do |artist|

      #end point of api
      tracks = client.get("/users/#{artist.soundcloud_username}/tracks?created_at[from]=#{Time.current.ago(2.days).to_s(:db)}")


      tracks.each do |track|
        new_tracks << track

      # put code here to get data from soundcloud api into postgres database
      end
    end

    new_tracks_description = new_tracks.collect{|track| "#{track.title} - #{track.permalink_url}" }.join(" \n")
    SoundcloudMailer.soundcloud(new_tracks_description).deliver_now
  end
end

# make sure to enable and scheldule in HEROKU
