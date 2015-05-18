class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  has_one :announcement

  has_attached_file :cover,
  :styles => { :medium => "600x600>" },
  :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  def album_cover_url
    "albums/#{self.artist.name.parameterize}-#{self.name.parameterize}.jpg"
  end

end


