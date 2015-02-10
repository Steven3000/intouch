class Song < ActiveRecord::Base
  belongs_to :artist

   def artwork_url
    "#{title.parameterize}.jpg"
  end


end
