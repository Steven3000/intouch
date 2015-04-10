class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :albums do |t|
      t.change :release_date, :date
    end
  end
  def self.down
    change_table :albums do |t|
      t.change :release_date, :integer
    end
  end
end
