class AddWallAttachmentToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :wall_attachment, :string
  end

  def self.down
    remove_column :posts, :wall_attachment
  end
end
