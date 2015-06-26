class AddReleaseDateToSongss < ActiveRecord::Migration
  def change
    add_column :songs, :release_date, :datetime
  end
end
