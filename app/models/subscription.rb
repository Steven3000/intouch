class Subscription < ActiveRecord::Base

  belongs_to :artist
  belongs_to :user

  validates :user, :presence => true

  if has_attached_file :avatar,
    :styles => { :medium => "600x600>", :thumb => "100x100>" },
    :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  end

   def picture_url
     "artists/#{self.name.parameterize}.jpg"
   end

end
