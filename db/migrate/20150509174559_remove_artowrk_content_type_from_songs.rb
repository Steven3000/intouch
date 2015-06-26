class RemoveArtowrkContentTypeFromSongs < ActiveRecord::Migration
  def change
      remove_column :songs, :artowrk_content_type, :type => :string
  end
end
