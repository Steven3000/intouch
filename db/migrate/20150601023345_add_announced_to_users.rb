class AddAnnouncedToUsers < ActiveRecord::Migration
def change
    add_column :users, :announced, :boolean, default: false
  end
end
