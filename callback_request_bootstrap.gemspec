﻿$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "callback_request_bootstrap/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "callback_request_bootstrap"
  s.version     = CallbackRequestBootstrap::VERSION
  s.authors     = ["Max Ivak"]
  s.email       = ["maxivak@gmail.com"]
  s.homepage    = "https://github.com/maxivak/callback_request_bootstrap"
  s.summary     = "show a form for callback request in modal"
  s.description = "Rails gem to show a form for callback request in modal. To be used with Bootstrap 4 and simple_form."
  s.license     = "MIT"
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '>= 4.0'

  s.add_development_dependency "mysql2"
  s.add_development_dependency "simple_form"
end
