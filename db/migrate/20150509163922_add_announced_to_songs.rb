class AddAnnouncedToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :announced, :boolean, default: false
  end
end
