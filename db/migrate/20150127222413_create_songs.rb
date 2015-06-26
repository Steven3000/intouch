class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.string :artwork
      t.string :features
      t.string :producer
      t.string :album
      t.string :release_date
      t.string :download_link
      t.text :embedded_code
      t.text :itunes
      t.text :google
      t.text :amazon
      t.text :spotify

      t.timestamps

    end
  end
end
