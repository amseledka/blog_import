class AddWallMessageToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :wall_message, :text
  end

  def self.down
    remove_column :posts, :wall_message
  end
end
