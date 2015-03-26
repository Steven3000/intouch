class AddAlbumTitleToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :album_title, :string
  end
end
