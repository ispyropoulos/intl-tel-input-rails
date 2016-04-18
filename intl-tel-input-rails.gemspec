# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'intl-tel-input/version'

Gem::Specification.new do |spec|
  spec.name          = "intl-tel-input-rails"
  spec.version       = IntlTelInput::VERSION
  spec.authors       = ["Ilias Spyropoulos"]
  spec.email         = ["ilias@testributor.com"]
  spec.summary       = %q{intl-tel-input for the Rails asset pipeline.}
  spec.description   = <<-EOF
    A jQuery plugin for entering and validating international telephone numbers.
    This gem allows for its easy inclusion into the Rails asset pipeline.
  EOF
  spec.homepage      = "https://github.com/ispyropoulos/intl-tel-input-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1"
  spec.add_dependency "sass-rails"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
