class AddAttachmentPicToArtists < ActiveRecord::Migration
  def self.up
    change_table :artists do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :artists, :pic
  end
end
