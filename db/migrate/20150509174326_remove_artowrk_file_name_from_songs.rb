class RemoveArtowrkFileNameFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :artowrk_file_name, :type => :string
  end
end
