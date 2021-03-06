# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "frank-cucumber/version"

Gem::Specification.new do |s|
  s.name        = "ngti-frank-cucumber"
  s.version     = Frank::Cucumber::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pete Hodgson","Derek Longmuir","Oleksiy Radyvanyuk"]
  s.email       = ["gems@thepete.net","oleksiy@ngti.nl"]
  s.homepage    = "http://rubygems.org/gems/frank-cucumber"
  s.summary     = %q{Use cucumber to test native iOS apps via Frank}
  s.description = %q{This is a modified version of Frank used solely inside NGTI company}

  git_files = `git ls-files`.split("\n")
  git_libs = `git ls-files -o -i --exclude-from=./.gitignore`.split("\n") 
  symbiote_files = Dir[File.join('frank-skeleton','frank_static_resources.bundle','**','*')]
  s.files         = git_files + git_libs + symbiote_files
  #puts s.files.join("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'cucumber', '~> 1.3', '>= 1.3.10'
  s.add_runtime_dependency 'rspec', '~> 2.14', '>= 2.14.1'
  s.add_runtime_dependency 'sim_launcher', '~> 0.4', '>= 0.4.6'
  s.add_runtime_dependency 'i18n', '~> 0.6', '>= 0.6.9'
  s.add_runtime_dependency 'plist', '~> 3.1', '>= 3.1.0'
  s.add_runtime_dependency 'json', '~>1.8', '>= 1.8.1'
  s.add_dependency( "dnssd", ["~>2.0"] )
  s.add_runtime_dependency 'thor', '~> 0.18', '>= 0.18.1'
  s.add_runtime_dependency 'xcodeproj', '~> 0.14', '>= 0.14.1'

  s.add_development_dependency 'rr', '~> 0'
  s.add_development_dependency 'yard', '~> 0'
  s.add_development_dependency 'pry', '~> 0'
  s.add_development_dependency 'pry-debugger', '~> 0'
  s.add_development_dependency 'byebug', '~> 0'
end
