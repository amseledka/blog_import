class ChangeAuthKeyToAccessTokenAndAddUserIdToUsers < ActiveRecord::Migration

  def self.up
    add_column :users, :user_id, :string
    rename_column :users, :auth_key, :access_token
  end
  
  def self.down
    remove_column :users, :user_id
    rename_column :users, :access_token, :auth_key
  end  

end
