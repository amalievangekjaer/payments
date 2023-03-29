$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "payment_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "payment_engine"
  spec.version     = PaymentEngine::VERSION
  spec.authors     = ["Amalie Vangekjær"]
  spec.email       = ["amalievangekjaer@gmail.com"]
  spec.homepage    = "https://payment-gem-website.com"
  spec.summary     = "Summary of PaymentEngine."
  spec.description = "Description of PaymentEngine."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.1.7"

  spec.add_development_dependency "sqlite3"
end
