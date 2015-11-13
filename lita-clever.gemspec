Gem::Specification.new do |spec|
  spec.name          = 'lita-clever'
  spec.version       = '0.0.3'
  spec.authors       = ['Francis Hinson']
  spec.email         = ['francis@chesscademy.com']
  spec.description   = %q{A Lita handler for Cleverbot.}
  spec.summary       = %q{A Lita handler for Cleverbot.}
  spec.homepage      = 'https://github.com/fhinson/lita-clever'
  spec.license       = 'MIT'
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 2.0'
  spec.add_runtime_dependency 'clever-api', '>= 0.0.2'

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rspec', '~> 3.2.0'

  spec.add_runtime_dependency "lita-exclusive-route"
end
