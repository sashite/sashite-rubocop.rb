# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name                   = "sashite-rubocop"
  spec.version                = ::File.read("VERSION.semver").chomp
  spec.author                 = "Cyril Kato"
  spec.email                  = "contact@cyril.email"
  spec.summary                = "Shared RuboCop config used by Sashité's Ruby projects 👮🏾"
  spec.description            = spec.summary
  spec.homepage               = "https://github.com/sashite/sashite-rubocop.rb"
  spec.required_ruby_version  = ">= 3.2.0"
  spec.license                = "MIT"
  spec.files                  = ::Dir["LICENSE.md", "README.md", "config/**/*"]

  spec.metadata = {
    "bug_tracker_uri"       => "https://github.com/sashite/sashite-rubocop.rb/issues",
    "documentation_uri"     => "https://rubydoc.info/gems/sashite-rubocop",
    "source_code_uri"       => "https://github.com/sashite/sashite-rubocop.rb",
    "rubygems_mfa_required" => "true"
  }

  spec.add_dependency "rubocop", "~> 1.75.8"
  spec.add_dependency "rubocop-performance", "~> 1.25"
  spec.add_dependency "rubocop-rails", "~> 2.32"
  spec.add_dependency "rubocop-rake", "~> 0.7"
  spec.add_dependency "rubocop-rspec", "~> 3.6"
end
