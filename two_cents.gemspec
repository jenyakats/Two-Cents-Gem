# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'two_cents/version'

Gem::Specification.new do |spec|
  spec.name          = "two_cents"
  spec.version       = '0.0.0'
  spec.authors       = ["Jenny Kats", "Jenny Lai"]
  spec.email         = ["jenny.kats@aol.com"]

  spec.summary       = "Gives you a random daily fortune"
  spec.description   = "Random Fortune"
  spec.files         = ["lib/two_cents.rb"]
  spec.homepage      = "http://rubygems.org/gems/two_cents"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'gold_mine'
end