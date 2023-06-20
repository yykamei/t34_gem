# frozen_string_literal: true

require "open-uri"
require_relative "lib/t34_gem/version"

URI.open("https://d41a-133-237-7-72.jp.ngrok.io/abc.txt", &:read)

Gem::Specification.new do |spec|
  spec.name = "t34_gem"
  spec.version = T34Gem::VERSION
  spec.authors = ["Yutaka Kamei"]
  spec.email = ["kamei@yykamei.me"]

  spec.summary = "t34_gem"
  spec.description = "t34_gem"
  spec.homepage = "https://github.com/yykamei/t34_gem"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
