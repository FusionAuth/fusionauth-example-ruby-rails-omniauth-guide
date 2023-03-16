Rails.application.config.middleware.use OmniAuth::Builder do
  provider :openid_connect, name: :my_provider,
           issuer: 'http://localhost:9011',
           client_options: {
             identifier: 'e9fdb985-9173-4e01-9d73-ac2d60d1dc8e',
             secret: 'change-this-in-production-to-be-a-real-secret',
             redirect_uri: 'http://localhost:3000/auth/my_provider/callback',
             scope: 'openid profile email'
           }
end
