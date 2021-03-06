$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jabe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jabe"
  s.version     = Jabe::VERSION
  s.authors     = ['Michael Moen a.k.a. UnderpantsGnome', 'Neil Heinrich']
  s.email       = ["michael@pixels-and-bits.com", "neil@pixels-and-bits.com"]
  s.homepage    = "http://github.com/pixels-and-bits/jabe"
  s.summary     = "Just Another Blog Engine"
  s.description = "Blog engine for Rails 3.1+"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.textile"]

  s.add_dependency "rails", ">= 3.1.0"
  s.add_dependency 'devise', '>= 2.0.0'
  s.add_dependency 'friendly_id', '>= 4.0.0'
  s.add_dependency 'gravtastic', '>= 3.2.6'
  s.add_dependency 'kaminari', '>= 0.13.0'
  s.add_dependency 'RedCloth', '>= 4.2.9'
  s.add_dependency 'sanitize', '>= 2.0.0'
  s.add_dependency 'rakismet', '1.3.0'

  s.add_development_dependency "sqlite3"
end
