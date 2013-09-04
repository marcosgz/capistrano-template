# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/template/version'

Gem::Specification.new do |gem|
  gem.name          = "marcosgz-cap-template"
  gem.version       = Capistrano::Template::VERSION
  gem.authors       = ["Marcos G. Zimmermann", "Tony Pitluga"]
  gem.email         = ["mgzmaster@gmail.com", "tony.pitluga@gmail.com"]
  gem.summary       = %q{Capistrano Templates}
  gem.homepage      = "https://github.com/marcosgz/capistrano-template"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "capistrano", "> 2.0.0"

  gem.add_development_dependency "rake"
end
