class Artist < ActiveRecord::Base
  has_many :songs

  def picture_url
    "artists/#{name.parameterize}.jpg"
  end
end

# any_artist.artist_url
