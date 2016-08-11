$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "treadstone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "treadstone"
  s.version     = Treadstone::VERSION
  s.authors     = ["Brian Le"]
  s.email       = ["brianle206@gmail.com"]
  s.homepage    = "https://github.com/brianle206"
  s.summary     = "Lightweight LMS and CMS"
  s.description = "Lightweight LMS and CMS"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "bcrypt", "~> 3.1.7"
  s.add_dependency "sass-rails", "~> 5.0"

  s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails"
  s.add_dependency "font-awesome-rails"
  s.add_dependency "autoprefixer-rails"
  s.add_dependency "simple_form", "~>3.1.0"


  s.add_dependency 'pygments.rb'
  s.add_dependency 'redcarpet'
  s.add_dependency "rails", "~> 4.2.7"

  s.add_development_dependency "pg"
end
