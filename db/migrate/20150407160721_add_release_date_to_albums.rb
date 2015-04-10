class AddReleaseDateToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :release_date, 'date USING CAST(column_name AS date)'
  end
end
