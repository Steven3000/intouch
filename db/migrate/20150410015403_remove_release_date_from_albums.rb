class RemoveReleaseDateFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :release_date, :type => :integer
  end
end
