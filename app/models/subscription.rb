class Subscription < ActiveRecord::Base

  belongs_to :artist
  belongs_to :user

  validates :user, :presence => true

   def picture_url
     "artists/#{self.name.parameterize}.jpg"
   end

end
