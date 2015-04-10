class ChangeDataTypeForReleaseDate < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.change :release_date, :string
    end
  end
  def self.down
    change_table :songs do |t|
      t.change :release_date, :integer
    end
  end
end
