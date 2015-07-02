class AddYoutubeV1ToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :youtube_v1, :text
  end
end
