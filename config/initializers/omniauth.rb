require 'omniauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :vkontakte, '2451953 ', 'wall', 'popup', 'http://api.vkontakte.ru/blank.html'
end
