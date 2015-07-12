class AddYoutubeV7ToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :youtube_v7, :text
  end
end
