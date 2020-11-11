lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wowza/api/version"

Gem::Specification.new do |spec|
  spec.name          = "wowza-api"
  spec.version       = Wowza::Api::VERSION
  spec.authors       = ["Ramiro Rodriguez"]
  spec.email         = ["ramiro.rodriguez@gmail.com"]

  spec.summary       = %q{wowza api gem}
  spec.description   = %q{Allows for riivet to user the wowza api across all microservices that might need it}
  spec.homepage      = "https://riivet.com"

  spec.metadata["allowed_push_host"] = "https://git.riivet.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/micronix/wowza-api"
  spec.metadata["changelog_uri"] = "https://github.com/micronix/wowza-api/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug"
end
