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
      end
    end

    puts new_tracks.collect(&:title)
  end
end
