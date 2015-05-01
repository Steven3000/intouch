class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  has_one :announcement


  def album_artwork_url
    "albums/#{self.artist.name.parameterize}-#{self.name.parameterize}.jpg"
  end

end


