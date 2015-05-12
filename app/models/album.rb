class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  has_one :announcement


  has_attached_file :cover,
  :styles => { :medium => "600x600>", :thumb => "75x75>" },
  :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  def album_artwork_url
    "albums/#{self.artist.name.parameterize}-#{self.name.parameterize}.jpg"
  end

end


