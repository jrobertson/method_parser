Gem::Specification.new do |s|
  s.name = 'method_parser'
  s.version = '0.1.0'
  s.summary = 'Uses the Parser gem to primarily return the defined methods for the class'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_runtime_dependency('parser', '~> 2.1','>= 2.1.9')
  s.signing_key = '../privatekeys/method_parser.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/method_parser'
end
