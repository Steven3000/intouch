class RemoveArtowrkFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :artowrk_updated_at, :type => :datetime
  end

end

