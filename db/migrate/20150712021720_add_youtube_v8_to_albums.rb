class AddYoutubeV8ToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :youtube_v8, :text
  end
end
