class Subscription < ActiveRecord::Base

  belongs_to :artist
  belongs_to :user

  validates :user, :presence => true

  has_attached_file :avatar,
    :styles => { :medium => "600x600>", :thumb => "100x100>" },
    :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

   def picture_url
     "artists/#{name.parameterize}.jpg"
   end

end
