require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'xJSWv3kP43uf9Wa5JRmnaw', 'L620grlacPruJk7TYmgSB2LXnYukwVJo1wZlyaAc'
end
