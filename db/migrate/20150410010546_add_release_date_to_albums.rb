class AddReleaseDateToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :release_date, :integer
  end
end
