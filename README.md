# DBL Rubocop

[![Test](https://github.com/dbl-works/rubocop-dbl/actions/workflows/test.yml/badge.svg)](https://github.com/dbl-works/rubocop-dbl/actions/workflows/test.yml)

RuboCop configuration for our Ruby on Rails projects.

[Official RoR RuboCop Configuration](https://github.com/rails/rails/blob/master/.rubocop.yml).

Releases are published to [RubyGems](https://rubygems.org/gems/rubocop-dbl).

## Installation

```ruby
group :development, :test do
  gem 'rubocop-dbl'
end
```

## Setup

run

```shell
rails generate rubocop_dbl:install
```

or manually Aad this line to your application's `.rubocop.yml`:

When using Rails:

```yml
require:
  - rubocop-rails

inherit_gem:
  rubocop-dbl:
    - config/dbl.yml
    - config/cops/rails.yml
```

When not using Rails:

```yml
inherit_gem:
  rubocop-dbl:
    - config/dbl.yml
```

## Configuration

### TargetRubyVersion

We only support the latest 2 versions of ruby, which is currently >= 2.7.
We only support the latest 2 versions of rails, which is currently >= 6.0.
See [test.yml](.github/workflows/test.yml) for details.

If you'd like to change `TargetRubyVersion`, see [Customization](#customization).

## Customization

If you'd like to customize the rubocop setting on your project, you can override it.

For example, if you want to change `TargetRubyVersion`, you can do it like:

```yml
# .rubocop.yml
inherit_gem:
  rubocop-dbl:
    - config/dbl.yml

# Override Setting
AllCops:
  TargetRubyVersion: 2.7.2
```

## Build & install gem locally

```shell
gem build rubocop-dbl.gemspec
gem install rubocop-dbl-0.1.0.gem
```

## Publish on RubyGems

```shell
bin/release
```

will guide you through the process.
