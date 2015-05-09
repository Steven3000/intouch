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

  # put data in album populates single songs of album
  def itunes
    if self.album.present? && self.album.itunes.present?
      self.album.itunes
    else
      read_attribute(:itunes)
    end
  end

  def amazon
    if self.album.present? && self.album.amazon.present?
      self.album.amazon
    else
      read_attribute(:amazon)
    end
  end

    def google
    if self.album.present? && self.album.google.present?
      self.album.google
    else
      read_attribute(:google)
    end
  end

  def spotify
    if self.album.present? && self.album.spotify.present?
      self.album.spotify
    else
      read_attribute(:spotify)
    end
  end

  def album_title
    if self.album.present? && self.album.album_title.present?
      self.album.album_title
    else
      read_attribute(:album_title)
    end
  end

  def release_date
    if self.album.present? && self.album.release_date.present?
      self.album.release_date
    else
      read_attribute(:release_date)
    end
  end

  def artowrk_file_name
    if self.album.present? && self.album.release_date.present?
      self.album.release_date
    else
      read_attribute(:release_date)
    end
  end

end




