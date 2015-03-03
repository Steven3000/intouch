class RemovePictureFromArtists < ActiveRecord::Migration
  def change
    remove_column :artists, :picture, :type, :string
  end
end
