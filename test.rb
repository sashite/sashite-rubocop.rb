#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop.yml")

if actual.keys.sort != ["Layout/HashAlignment", "Metrics/ClassLength", "Naming/MemoizedInstanceVariableName", "Style/ClassAndModuleChildren", "Style/EmptyMethod", "Style/StringLiterals", "Style/SymbolArray"]
  raise
end

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/rails.yml")

raise if actual.keys.sort != ["Rails/SkipsModelValidations", "require"]

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/rspec.yml")

if actual.keys.sort != ["RSpec/ExampleLength", "RSpec/MultipleMemoizedHelpers", "RSpec/NamedSubject", "RSpec/NestedGroups", "require"]
  raise
end

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/performance.yml")

raise if actual.keys.sort != ["require"]

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/rake.yml")

raise if actual.keys.sort != ["require"]

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/sequel.yml")

raise if actual.keys.sort != ["require"]

# ------------------------------------------------------------------------------

actual = YAML.load_file("config/rubocop/thread_safety.yml")

raise if actual.keys.sort != ["require"]
