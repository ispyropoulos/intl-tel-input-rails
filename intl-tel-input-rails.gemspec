# encoding: utf-8

$:.push File.expand_path("../lib", __FILE__)
require 'intl-tel-input/version'

Gem::Specification.new do |spec|
  spec.platform      = Gem::Platform::RUBY
  spec.name          = 'intl-tel-input-rails'
  spec.version       = IntlTelInput::VERSION
  spec.summary       = %q{intl-tel-input for the Rails asset pipeline.}
  spec.description   = <<-TEXT
    A jQuery plugin for entering and validating international telephone numbers.
    This gem allows for its easy inclusion into the Rails asset pipeline.
  TEXT

  spec.required_ruby_version = ">= 1.8.7"

  spec.license       = "MIT"

  spec.author        = "Ilias Spyropoulos"
  spec.email         = "ilias@heavymelon.com"
  spec.homepage      = "https://github.com/ispyropoulos/intl-tel-input-rails"

  spec.files         = `git ls-files`.split("\n")
  spec.require_path  = "lib"

  spec.rdoc_options << "--exclude" << "."

  spec.add_dependency "railties", ">= 3.1"
  spec.add_dependency "sassc-rails"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
