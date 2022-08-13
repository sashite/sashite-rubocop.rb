# Sashité RuboCop

[![Version](https://img.shields.io/github/v/tag/sashite/sashite-rubocop.rb?label=Version&logo=github)](https://github.com/sashite/sashite-rubocop.rb/tags)
[![Ruby documentation](https://img.shields.io/badge/Ruby-documentation-blue.svg?logo=github)](https://rubydoc.info/github/sashite/sashite-rubocop.rb/main)
[![Ruby](https://github.com/sashite/sashite-rubocop.rb/workflows/Ruby/badge.svg?branch=main)](https://github.com/sashite/sashite-rubocop.rb/actions?query=workflow%3Aruby+branch%3Amain)
[![RuboCop](https://github.com/sashite/sashite-rubocop.rb/workflows/RuboCop/badge.svg?branch=main)](https://github.com/sashite/sashite-rubocop.rb/actions?query=workflow%3Arubocop+branch%3Amain)
[![License](https://img.shields.io/github/license/sashite/sashite-rubocop.rb?label=License&logo=github)](https://github.com/sashite/sashite-rubocop.rb/raw/main/LICENSE.md)

> Shared RuboCop config used by Sashité's Ruby projects 👮🏾

## About

At Sashité, many of our services are built on Ruby.

To keep the code base consistent across projects, we have collected here the common style rules we use to improve readability and maintainability.

![A chessboard, with a cop, a pawn and some Ruby](https://github.com/sashite/sashite-rubocop/raw/main/img/a-chessboard-with-a-cop-a-pawn-and-some-ruby.svg)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "sashite-rubocop", ">= 1.0.0.beta1"
```

And then execute:

```sh
bundle install
```

Or install it yourself as:

```sh
gem install sashite-rubocop --pre
```

## Usage

There are 2 ways we can add these configs to your project.

### Inherit from Gem

```yaml
# .rubocop.yml
inherit_gem:
  sashite-rubocop:
    - config/rubocop.yml
    - config/rubocop/performance.yml
    - config/rubocop/rails.yml
    - config/rubocop/rake.yml
    - config/rubocop/rspec.yml
    - config/rubocop/sequel.yml
    - config/rubocop/thread_safety.yml

# Some files define `Exclude` for same cops. To merge the `Exclude` rules, add:
inherit_mode:
  merge:
    - Exclude
```

### Inherit from Remote URL

The example below assumes you want to fetch from the latest config (i.e., from `main` branch).

This is recommended if you prefer not to install any gem. RuboCop will download and cache copies of these config files locally.

For more details, please see the RuboCop document: <https://rubocop.readthedocs.io/en/latest/configuration/#inheriting-configuration-from-a-remote-url>

Add these lines to your `.rubocop.yml`:

```yaml
# .rubocop.yml
inherit_from:
  - https://raw.githubusercontent.com/sashite/sashite-rubocop/main/config/rubocop.yml
  - https://raw.githubusercontent.com/sashite/sashite-rubocop/main/config/rubocop/performance.yml
  - https://raw.githubusercontent.com/sashite/sashite-rubocop/main/config/rubocop/rails.yml
  - https://raw.githubusercontent.com/sashite/sashite-rubocop/main/config/rubocop/rake.yml
  - https://raw.githubusercontent.com/sashite/sashite-rubocop/main/config/rubocop/rspec.yml
  - https://raw.githubusercontent.com/sashite/sashite-rubocop/main/config/rubocop/sequel.yml
  - https://raw.githubusercontent.com/sashite/sashite-rubocop/main/config/rubocop/thread_safety.yml
```

## Versioning

__Sashité RuboCop__ uses [Semantic Versioning 2.0.0](https://semver.org/)

## License

The [gem](https://rubygems.org/gems/sashite-rubocop) is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
