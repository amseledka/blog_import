class User < ActiveRecord::Base
  has_many :feeds
  def to_s
    auth_key
  end
end
