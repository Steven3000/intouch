class AddDownloadLinkToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :download_link, :string
    add_column :albums, :embedded_code, :text
    add_column :albums, :itunes, :string
    add_column :albums, :google, :string
    add_column :albums, :amazon, :string
    add_column :albums, :spotify, :string
    add_column :albums, :youtube, :text
  end
end
