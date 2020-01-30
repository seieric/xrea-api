require_relative 'lib/xrea/version'

Gem::Specification.new do |spec|
  spec.name          = "xrea-api"
  spec.version       = XreaAPI::VERSION
  spec.authors       = ["seieric"]
  spec.email         = ["30688855+seieric@users.noreply.github.com"]

  spec.summary       = %q{A simple interface to the Xrea and Coreserver API.}
  spec.description   = %q{You can use Xrea and Coreserver API simply by using this gem.}
  spec.homepage      = "https://github.com/seieric/xrea-api"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/seieric/xrea-api/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
