#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/performance.yml")

raise if actual.keys.sort != ["plugin"]

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/rails.yml")

raise if actual.keys.sort != ["Rails/SkipsModelValidations", "plugin"]

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/rake.yml")

raise if actual.keys.sort != ["plugin"]

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/rspec.yml")

if actual.keys.sort != ["RSpec/ExampleLength", "RSpec/MultipleMemoizedHelpers", "RSpec/NamedSubject", "RSpec/NestedGroups", "plugin"]
  raise
end

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop.yml")

if actual.keys.sort != ["Layout/HashAlignment", "Lint/ConstantResolution", "Metrics/ClassLength", "Naming/ConstantName", "Naming/MemoizedInstanceVariableName", "Style/ClassAndModuleChildren", "Style/EmptyMethod", "Style/StringLiterals", "Style/SymbolArray"]
  raise
end
