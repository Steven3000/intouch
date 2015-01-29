class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :picture
      t.string :website
      t.string :record_label

      t.timestamps

    end
  end
end
