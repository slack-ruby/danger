# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'slack-ruby-danger/version'

Gem::Specification.new do |s|
  s.name        = 'slack-ruby-danger'
  s.version     = SlackRubyDanger::VERSION
  s.authors     = ['dblock']
  s.email       = ['dblock@dblock.org']
  s.homepage    = 'https://github.com/slack-ruby/danger'
  s.summary     = 'Danger.systems conventions for slack-ruby projects.'
  s.description = 'Packages a Dangerfile to be used with Danger for projects within the slack-ruby community.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_runtime_dependency 'danger', '~> 4.0.1'
  s.add_runtime_dependency 'danger-changelog', '~> 0.2.0'
end
