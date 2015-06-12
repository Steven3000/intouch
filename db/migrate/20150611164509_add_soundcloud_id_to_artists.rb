class AddSoundcloudIdToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :soundcloud_username, :string
  end
end
