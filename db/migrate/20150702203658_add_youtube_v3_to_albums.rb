class AddYoutubeV3ToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :youtube_v3, :text
  end
end

