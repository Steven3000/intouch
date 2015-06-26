class AddSoundcloudTrackIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :soundcloud_track_id, :integer
  end
end
