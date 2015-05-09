class Song < ActiveRecord::Base

  belongs_to :album
  belongs_to :artist
  has_one :announcement

  has_attached_file :artwork,
    :styles => { :medium => "600x600>", :thumb => "100x100>" },
    :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :artwork, :content_type => /\Aimage\/.*\Z/

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


