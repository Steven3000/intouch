class Artist < ActiveRecord::Base
  has_many :song
  has_many :subscription
  has_many :user, :through => :subscription
  has_many :announcement, :through => :song

  def picture_url
    "artists/#{name.parameterize}.jpg"
  end
end

