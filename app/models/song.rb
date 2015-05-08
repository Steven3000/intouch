class Song < ActiveRecord::Base

  belongs_to :album
  belongs_to :artist
  has_one :announcement

  def artwork_url
    "artwork/#{self.artist.name.parameterize}-#{title.parameterize}.jpg"
  end

  def itunes
    if self.album.present? && self.album.itunes.present?
      self.album.itunes
    else
      read_attribute(:itunes)
    end
  end

  def itunes
    if self.album.present? && self.album.amazon.present?
      self.album.itunes
    else
      read_attribute(:itunes)
    end
  end


end


