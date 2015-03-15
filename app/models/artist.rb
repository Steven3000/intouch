class Artist < ActiveRecord::Base
  has_many :songs
  has_many :subscriptions
  has_many :users, :through => :subscriptions
  has_many :announcements, :through => :songs

  def picture_url
    "artists/#{name.parameterize}.jpg"
  end
end

