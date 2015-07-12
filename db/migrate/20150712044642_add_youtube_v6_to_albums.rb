class AddYoutubeV6ToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :youtube_v6, :text
  end
end
