class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.integer :song_id
      t.datetime :post_creation_date
      t.text :url
      t.string :artwork

      t.timestamps null: false
    end
  end
end
