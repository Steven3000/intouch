class AddBackToAlbums < ActiveRecord::Migration

  def self.up
    add_attachment :albums, :back
  end

  def self.down
    remove_attachment :albums, :back
  end
end
