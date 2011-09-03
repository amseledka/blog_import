require 'omniauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :vkontakte, '2451953 ', 'qTn9hZG52ixvgfaFUqGq'
end
