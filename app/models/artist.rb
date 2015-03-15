class Artist < ActiveRecord::Base
  has_many :songs
  has_many :user, :through => :subscriptions
  has_many :announcements, :through => :songs

  def picture_url
    "artists/#{name.parameterize}.jpg"
  end
end

