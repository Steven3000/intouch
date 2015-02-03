class Artist < ActiveRecord::Base
  has_many :songs

  def picture_url
    "#{name.parameterize}.jpg"
  end
end
