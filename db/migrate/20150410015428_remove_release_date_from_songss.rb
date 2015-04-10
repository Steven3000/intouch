class RemoveReleaseDateFromSongss < ActiveRecord::Migration
  def change
    remove_column :songs, :release_date, :type => :integer
  end
end
