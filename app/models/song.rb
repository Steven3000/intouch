class Song < ActiveRecord::Base

  belongs_to :album
  belongs_to :artist
  has_one :announcement

  def artwork_url
    "http://s3.amazonaws.com/ntouchimages/images/artwork/#{self.artist.name.parameterize}-#{title.parameterize}.jpg"
  end


end


