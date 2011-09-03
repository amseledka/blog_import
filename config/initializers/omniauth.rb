require 'omniauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :vkontakte, '2461743 ', 'G7VY7eR3QRKJuZpkBtUS'
end
