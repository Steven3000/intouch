class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  has_one :announcement

  def artwork_url
    "albums/#{self.artist.name.parameterize}-#{self.album.name.parameterize}.jpg"
  end

end
