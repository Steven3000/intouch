class ChangeReleaseDateToDate < ActiveRecord::Migration
  def up
    change_column(:songs, :release_date, :date)
  end

  def down
    change_column(:songs, :release_date, :string)
  end
end
