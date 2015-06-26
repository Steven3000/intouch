class RemoveArtistFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :artist, :type => :string
  end
end
