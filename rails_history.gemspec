# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_history/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_history'
  spec.version       = RailsHistory::VERSION
  spec.authors       = ['Toshiyuki Kawanishi']
  spec.email         = ['toshi.kawanishi@gmail.com']

  spec.summary       = 'A command like history for rails'
  spec.description   = 'A command like history for rails'
  spec.homepage      = 'https://github.com/toshi-kawanishi/rails_history'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'railties', '~> 4.0'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
end
