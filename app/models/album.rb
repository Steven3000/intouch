class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  has_one :announcement

  def artwork_url
    "album/#{self.artist.name.parameterize}-#{alubm.name.parameterize}.jpg"
  end

end
