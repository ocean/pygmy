# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pygmy/version'

Gem::Specification.new do |s|
  s.name        = 'pygmy-apple'
  s.version     = Pygmy::VERSION
  s.date        = Pygmy::DATE
  s.summary     = 'pygmy-apple provides the required services to run the ' \
    'amazee.io Drupal local development environment on Apple Silicon (M1).'
  s.description = 'To fully and easily run a local Drupal development system you ' \
    'need more than just a Docker container with Drupal running. ' \
    'Default development workflows involve running multiple sites at the same time, ' \
    'interacting with other services which are authenticated via ssh and more.' \
    'Pygmy-apple makes sure that the required Docker containers are started and that you' \
    'comfortably can access the Drupal containers just via the browser.'
  s.authors     = ['Michael Schmid']
  s.email       = 'michael@amazee.io'
  s.files       = ['lib/pygmy.rb'] + Dir['lib/pygmy/**/*']
  s.homepage    = 'https://github.com/ocean/pygmy'
  s.license     = 'MIT'

  s.executables << 'pygmy-apple'

  s.add_runtime_dependency 'colorize', '~> 0.7'
  s.add_runtime_dependency 'thor', '~> 0.19'
  s.add_runtime_dependency 'ptools', '~> 1.3'

  s.add_development_dependency 'rspec', '~> 3.4'
  s.add_development_dependency 'rake', '~> 10.5'
  s.add_development_dependency 'byebug', '~> 8.2'
  s.add_development_dependency 'codeclimate-test-reporter', '~> 0.5'
end
