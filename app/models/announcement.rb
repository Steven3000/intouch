class Announcement < ActiveRecord::Base

  belongs_to :song
  belongs_to :announcement
end


# when a song based on a user's subscription
# is uploaded an announcement is sent
