Gem::Specification.new do |s|
  s.name = 'method_parser'
  s.version = '0.2.0'
  s.summary = 'Uses the Parser gem to primarily return the defined methods for the class'
  s.authors = ['James Robertson']
  s.files = Dir['lib/method_parser.rb']
  s.add_runtime_dependency('parser', '~> 3.2','>= 3.2.10')
  s.add_runtime_dependency('rexle-builder', '~> 1.0','>= 1.0.8')
  s.add_runtime_dependency('rexle', '~> 1.5','>= 1.5.14')
  s.signing_key = '../privatekeys/method_parser.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/method_parser'
end
