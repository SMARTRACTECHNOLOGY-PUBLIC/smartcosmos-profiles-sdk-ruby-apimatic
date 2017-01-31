Gem::Specification.new do |s|
  s.name = 'smartcosmos_profiles'
  s.version = '2.0.0'
  s.summary = 'smartcosmos_profiles'
  s.description = 'Profiles provides full transparency into supply chain and manufacturing metadata associated with all types of RFID transponders, setting a new standard in customer self-service. By providing both Web and Web Service access to supply chain metadata, customers are managing their RFID-enabled IP and technical data in a highly efficient manner'
  s.authors = ['APIMATIC', 'Zeeshan Ejaz Bhatti']
  s.email = 'zeeshan@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
