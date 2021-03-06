# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'food_ideas/version'

Gem::Specification.new do |spec|
  spec.name          = "food_ideas"
  spec.version       = FoodIdeas::VERSION
  spec.authors       = ["WilliamMena"]
  spec.email         = ["williammena1991@gmail.com"]

  spec.summary       = "My gem purpose is to give you ideas on what to eat when you're undecisive."
  spec.description   = "My gem purpose is to give you ideas on what to eat when you're undecisive. You enter up to 5 ingredients and it will give you back 5 recipes (more recipes and other updates on the way)."
  spec.homepage      = "https://github.com/WilliamMena/food-idea"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  # spec.add_runtime_dependency 'nokogiri', '~> 1.6', '>= 1.6.8'
end
