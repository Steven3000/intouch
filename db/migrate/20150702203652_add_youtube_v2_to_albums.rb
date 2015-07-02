class AddYoutubeV2ToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :youtube_v2, :text
  end
end

