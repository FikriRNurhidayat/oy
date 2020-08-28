
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "oy/version"

Gem::Specification.new do |spec|
  spec.name          = "oy-indonesia"
  spec.version       = Oy::VERSION
  spec.authors       = ["Fikri"]
  spec.email         = ["FikriRNurhidayat@gmail.com"]

  spec.summary       = "Unofficial gem that will help you to use OY! Indonesia service." 
  spec.description   = "This Gem was made based on OY! Indonesia Payment Checkout API V2."
  spec.homepage      = "https://www.google.com"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir['lib/*.rb'] + Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "httparty"
end
