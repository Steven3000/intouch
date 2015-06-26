class RemoveArtowrkFileSizeFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :artowrk_file_size, :type => :integer
  end
end
