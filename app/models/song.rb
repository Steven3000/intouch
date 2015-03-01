class Song < ActiveRecord::Base

  belongs_to :artist

  def artwork_url
    "artwork/#{self.artist.name.parameterize}-#{title.parameterize}.jpg"
  end

end

# any_song.artwork_url
