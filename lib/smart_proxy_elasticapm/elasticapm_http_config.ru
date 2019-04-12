require 'elastic-apm'

# Wraps all requests in transactions and reports exceptions
::Sinatra::Base.use ::ElasticAPM::Middleware

# Start an instance of the Agent
::ElasticAPM.start(
  service_name: 'foreman-proxy',
  server_url: Proxy::ElasticAPM::Plugin.settings.server_url,
  secret_token: Proxy::ElasticAPM::Plugin.settings.secret_token,
  environment: 'production',
  framework_name: 'Smart-Proxy',
  framework_version: Proxy::VERSION,
  logger: ::Proxy::LogBuffer::Decorator.instance
)

# Gracefully stop the agent when process exits.
# Makes sure any pending transactions are sent.
at_exit { ::ElasticAPM.stop }
