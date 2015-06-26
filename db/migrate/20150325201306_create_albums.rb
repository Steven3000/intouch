class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :artist, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :albums, :artists
  end
end
