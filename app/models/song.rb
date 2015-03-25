class Song < ActiveRecord::Base

  belongs_to :artist
  has_one :announcement

  def artwork_url
    "artwork/#{self.artist.name.parameterize}-#{title.parameterize}.jpg"
  end


end


