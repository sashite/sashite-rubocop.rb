#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop.yml")

if actual.to_h != { "AllCops" => { "NewCops"=>"enable" }, "Layout/HashAlignment" => { "EnforcedHashRocketStyle" => "table", "EnforcedColonStyle" => "table" }, "Metrics/ClassLength" => { "Enabled"=>false }, "Naming/MemoizedInstanceVariableName" => { "EnforcedStyleForLeadingUnderscores"=>"required" }, "Style/ClassAndModuleChildren" => { "EnforcedStyle"=>"nested" }, "Style/EmptyMethod" => { "EnforcedStyle"=>"expanded" }, "Style/SymbolArray" => { "Enabled"=>true }, "Style/StringLiterals" => { "EnforcedStyle"=>"double_quotes" } }
  raise
end

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/rails.yml")

raise if actual.to_h != { "require" => "rubocop-rails", "Rails/SkipsModelValidations" => { "Enabled"=>false } }

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/rspec.yml")

if actual.to_h != { "require" => "rubocop-rspec", "RSpec/ExampleLength" => { "Enabled"=>false }, "RSpec/MultipleMemoizedHelpers" => { "Enabled"=>false }, "RSpec/NestedGroups" => { "Enabled"=>false }, "RSpec/NamedSubject" => { "Enabled"=>false } }
  raise
end

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/performance.yml")

raise if actual.to_h != { "require"=>"rubocop-performance" }

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/rake.yml")

raise if actual.to_h != { "require"=>"rubocop-rake" }

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/sequel.yml")

raise if actual.to_h != { "require"=>"rubocop-sequel" }

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/thread_safety.yml")

raise if actual.to_h != { "require"=>"rubocop-thread_safety" }
