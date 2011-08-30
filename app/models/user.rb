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
  
  def post_to_wall(wall_text, wall_attachment)
    call_vk_method('post_to_wall', "post_text=#{wall_text}&attachment=#{wall_attachment}")
  end

protected
  def call_vk_method(method, params)
    response = open("https://api.vkontakte.ru/method/#{method}?#{params}&access_token=#{access_token}")
    ActiveSupport::JSON.parse(response)
  end
end
