class User < ActiveRecord::Base
  has_many :feeds
  def to_s
    "id: #{user_id} access_token: #{access_token}"
  end
end
