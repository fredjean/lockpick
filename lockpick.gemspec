# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lockpick/version'

Gem::Specification.new do |spec|
  spec.name          = "lockpick"
  spec.version       = Lockpick::VERSION
  spec.authors       = ["Frederic Jean"]
  spec.email         = ["fred@fredjean.net"]
  spec.description   = %q{pulls ssh public keys from GitHub and populates authorized_keys}
  spec.summary       = %q{pulls ssh public keys from GitHub and populates authorized_keys}
  spec.homepage      = "https://github.com/fredjean/lockpick"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/).reject do |f|
    %w(Cheffile Cheffile.lock Vagrantfile upgrade-chef.sh).include?(f)
  end
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "main"
  spec.add_dependency "map"
  spec.add_dependency "pry"
  spec.add_dependency "github_api"
  spec.add_dependency "arrayfields", '~> 4.7.4'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "librarian-chef"
  spec.add_development_dependency "rake"
end
