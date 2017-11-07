OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'app_id', 'client_secret', scope: 'email', info_fields: 'email,name'
end