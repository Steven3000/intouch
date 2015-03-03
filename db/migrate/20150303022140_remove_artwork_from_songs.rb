class RemoveArtworkFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :artwork, :type => :string
  end
end
