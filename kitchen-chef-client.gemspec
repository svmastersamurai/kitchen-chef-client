# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-chef-client'
  spec.version       = '0.3'
  spec.authors       = ['Dan Sedlacek']
  spec.email         = ['danfsedlacek@gmail.com']
  spec.description   = 'A Test Kitchen Provisioner that does not use local-mode.'
  spec.summary       = spec.description
  spec.homepage      = ''
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen', '~> 1.23'

  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'rubocop', '~> 0.59'
end

