class AddAnnouncedToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :announced, :boolean, default: false
  end
end
