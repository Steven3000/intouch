class Announcement < ActiveRecord::Base

  belongs_to :song
  belongs_to :user
  belongs_to :album

end
