class AddAlbumIdToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album_id, :integer
  end
end
