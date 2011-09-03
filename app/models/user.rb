class User < ActiveRecord::Base
  has_many :feeds
  def to_s
    "id: #{user_id} access_token: #{access_token}"
  end

=begin  def get_auth
    params = call_vk_method('auth')
    update_attributes(:access_token => params[:access_token])
  end
=end
  
  def post_to_wall(wall_message, wall_attachment)
    call_vk_method('wall.post', "owner_id=#{user_id}&message=#{wall_message}&attachment=#{wall_attachment}")
  end

def self.create_with_omniauth(auth)
  create! do |user|
    user.user_id = auth["user_id"]
  end
end



protected
  def call_vk_method(method, params)
    response = eat("https://api.vkontakte.ru/method/#{method}?#{params}&access_token=#{access_token}")
    ActiveSupport::JSON.decode(response)
  end
end
