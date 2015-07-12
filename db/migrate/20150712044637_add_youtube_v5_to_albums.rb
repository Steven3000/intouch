class AddYoutubeV5ToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :youtube_v5, :text
  end
end
