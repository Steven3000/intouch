class AddYoutubeV4ToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :youtube_v4, :text
  end
end

