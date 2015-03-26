class AddTrackAndAlbumIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :track, :integer
    add_column :songs, :album_id, :integer
  end
end
