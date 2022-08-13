# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name                   = "sashite-rubocop"
  spec.version                = ::File.read("VERSION.semver").chomp
  spec.author                 = "Cyril Kato"
  spec.email                  = "contact@cyril.email"
  spec.summary                = "Shared RuboCop config used by Sashité's Ruby projects 👮🏾"
  spec.description            = spec.summary
  spec.homepage               = "https://github.com/sashite/sashite-rubocop.rb"
  spec.required_ruby_version  = ">= 2.7.0"
  spec.license                = "MIT"
  spec.files                  = ::Dir["LICENSE.md", "README.md", "config/**/*"]

  spec.metadata = {
    "bug_tracker_uri"       => "https://github.com/sashite/sashite-rubocop.rb/issues",
    "documentation_uri"     => "https://rubydoc.info/gems/sashite-rubocop",
    "source_code_uri"       => "https://github.com/sashite/sashite-rubocop.rb",
    "rubygems_mfa_required" => "true"
  }

  spec.add_runtime_dependency "rubocop", "~> 1.35.0"
  spec.add_runtime_dependency "rubocop-performance", "~> 1.14"
  spec.add_runtime_dependency "rubocop-rails", "~> 2.15"
  spec.add_runtime_dependency "rubocop-rake", "~> 0.6"
  spec.add_runtime_dependency "rubocop-rspec", "~> 2.12"
  spec.add_runtime_dependency "rubocop-sequel", "~> 0.3"
  spec.add_runtime_dependency "rubocop-thread_safety", "~> 0.4"

  spec.add_development_dependency "brutal"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-md"
  spec.add_development_dependency "rubocop-rake"
  spec.add_development_dependency "yaml"
end
