class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  has_one :announcement

  has_attached_file :cover,
  :styles => { :medium => "500x500>" },
  :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  has_attached_file :back,
  :styles => { :medium => "500x500>" },
  :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :back, :content_type => /\Aimage\/.*\Z/

  def album_cover_url
    "albums/#{self.artist.name.parameterize}-#{self.name.parameterize}.jpg"
  end

  def album_back_url
    "albums/#{self.artist.name.parameterize}-#{self.name.parameterize}.jpg"
  end

end
