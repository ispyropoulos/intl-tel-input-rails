# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'intl-tel-input/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "intl-tel-input-rails"
  spec.version       = IntlTelInput::Rails::VERSION
  spec.authors       = ["Ilias Spyropoulos"]
  spec.email         = ["ilias@incrediblue.com"]
  spec.summary       = %q{intl-tel-input for the Rails asset pipeline.}
  spec.homepage      = "https://github.com/ispyropoulos/intl-tel-input-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")

  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 3.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
