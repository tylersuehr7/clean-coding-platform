Pod::Spec.new do |s|
  s.name = 'GalaxyApi'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.0.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v0.0.0' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'GalaxyApi Swift SDK'
  s.source_files = 'GalaxyApiClient/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
