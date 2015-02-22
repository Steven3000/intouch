class AddYoutubeToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :youtube, :text
  end
end
