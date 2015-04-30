class Subscription < ActiveRecord::Base

  belongs_to :artist
  belongs_to :user

  validates :user, :presence => true

  def picture_url
    "@http://s3.amazonaws.com/ntouchimages/images/artists/#{name.parameterize}.jpg"
  end

end
