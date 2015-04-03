$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "callback_request_bootstrap/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "callback_request_bootstrap"
  s.version     = CallbackRequestBootstrap::VERSION
  s.authors     = ["Max Ivak"]
  s.email       = ["maxivak@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CallbackRequestBootstrap."
  s.description = "TODO: Description of CallbackRequestBootstrap."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "mysql2"
end
