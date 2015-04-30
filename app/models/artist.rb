class Artist < ActiveRecord::Base
  has_many :songs

  has_many :subscriptions
  has_many :users, :through => :subscriptions
  has_many :announcements, :through => :songs


  has_many :albums, dependent: :destroy

  # has_many :albums, :through => :songs

  def picture_url
    "http://s3.amazonaws.com/ntouchimages/images/artists/#{name.parameterize}.jpg"
  end
end

