module Proxy
  module ElasticAPM
    class Plugin < ::Proxy::Plugin
      plugin 'elasticapm', Proxy::ElasticAPM::VERSION

      default_settings enabled: true, service_name: 'foreman-proxy'
      validate_presence :server_url, :secret_token

      http_rackup_path File.expand_path('elasticapm_http_config.ru', File.expand_path('../', __FILE__))
      https_rackup_path File.expand_path('elasticapm_http_config.ru', File.expand_path('../', __FILE__))
    end
  end
end
