require File.expand_path('../lib/smart_proxy_elasticapm/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'smart_proxy_elasticapm'
  s.version = Proxy::ElasticAPM::VERSION

  s.summary = 'Elastic APM smart proxy plugin'
  s.description = 'Adds reporting to Elastic APM to Foreman smart-proxy'
  s.authors = ['Timo Goebel']
  s.email = ['mail@timogoebel.name']
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.files = Dir['{lib,settings.d,bundler.d}/**/*'] + s.extra_rdoc_files
  s.homepage = 'http://github.com/timogoebel/smart_proxy_elasticapm'
  s.license = 'GPLv3'
  s.add_dependency 'elastic-apm'
end
