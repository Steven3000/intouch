class AddAttachmentArtowrkToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :artowrk
    end
  end

  def self.down
    remove_attachment :songs, :artowrk
  end
end
