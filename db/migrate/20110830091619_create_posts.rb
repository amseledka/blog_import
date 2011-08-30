class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.timestamps
      t.references :feed_id
    end
  end

  def self.down
    drop_table :posts
  end
end
