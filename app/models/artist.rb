class Artist < ActiveRecord::Base
  has_many :songs

  has_many :subscriptions
  has_many :users, :through => :subscriptions
  has_many :announcements, :through => :songs


  has_many :albums, dependent: :destroy

  # has_many :albums, :through => :songs

  has_attached_file :avatar,
    :styles => { :medium => "600x600>", :thumb => "100x100>" },
    :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/



  # def picture_url
  #   "artists/#{name.parameterize}.jpg"
  # end
  # def picture_url2
  #   "artists2/#{name.parameterize}.jpg"
  # end
  # def picture_url3
  #   "artists3/#{name.parameterize}.jpg"
  # end


end

