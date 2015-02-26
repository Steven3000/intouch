# TODO: Indentation is kinda of messed up here

class Song < ActiveRecord::Base
  belongs_to :artist

   def artwork_url
    "artwork/#{self.artist.name.parameterize}-#{title.parameterize}.jpg"
  end

end
