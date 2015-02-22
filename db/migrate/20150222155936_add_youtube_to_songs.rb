class AddYoutubeToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :type, :text
  end
end
