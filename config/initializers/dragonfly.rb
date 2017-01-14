require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick,
	convert_command: "/usr/local/bin/convert",
	identify_command: "/usr/local/bin/identify"

  secret "d4daf39f7a689aa7c1f0f5f297b288eeeef009289c2fa3ba3df242c0a354e163"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
