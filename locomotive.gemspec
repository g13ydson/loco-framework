require_relative "lib/locomotive/version"

Gem::Specification.new do |spec|
  spec.name = "locomotive"
  spec.version = Locomotive::VERSION
  spec.authors = ["Gleydson Tavares"]
  spec.email = ["tavares.gleydson@gmail.com"]

  spec.summary = "A rack-based web framework."
  spec.description = "A rack-based web framework but with extra awesome"
  spec.homepage = "https://www.github.com/g13ydson/loco-framework"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack"
end
