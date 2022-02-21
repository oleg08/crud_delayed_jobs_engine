require_relative "lib/crud_delayed_jobs/version"

Gem::Specification.new do |spec|
  spec.name        = "crud_delayed_jobs"
  spec.version     = CrudDelayedJobs::VERSION
  spec.authors     = ["OH092009"]
  spec.email       = ["Oleh_Hudak@epam.onmicrosoft.com"]
  spec.homepage    = "https://github.com/oleg08/bookshelf"
  spec.summary     = "Summary of CrudDelayedJobs."
  spec.description = "Description of CrudDelayedJobs."
    spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/oleg08/bookshelf"
  spec.metadata["changelog_uri"] = "https://github.com/oleg08/bookshelf"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.2.2"
end
