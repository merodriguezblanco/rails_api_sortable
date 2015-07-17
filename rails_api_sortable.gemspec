$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_api_sortable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_api_sortable"
  s.version     = RailsApiSortable::VERSION
  s.authors     = ["zwelchcb"]
  s.email       = ["Zachary.Welch@careerbuilder.com"]
  s.homepage    = "https://cagit.careerbuilder.com/zwelch/rails_api_sortable"
  s.summary     = "Sorting support for Rails API."
  s.description = "Sorting support for Rails API."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "responders"
end
