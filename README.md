# rubocop-dbl_config
* add a gem version here (private package!)
* add a CI badge


RuboCop configuration for our Ruby on Rails projects.

[Official RoR RuboCop Configuration](https://github.com/rails/rails/blob/master/.rubocop.yml)
## Installation

Add this line to your application's `Gemfile`:

```ruby
group :development, :test do
  gem "rubocop-dbl_config", github: 'dbl-works/rubocop-dbl_config'
end
```

## Usage

Add this line to your application's `.rubocop.yml`:

```yml
inherit_gem:
  rubocop-dbl_config:
    - config/dbl.yml
```

Or just run:

```console
$ rails generate rubocop_dbl_config:install
```

## Configuration

### TargetRubyVersion

Rails 6 only supports Ruby 2.5 or more, hence rubocop-dbl_config supports Ruby >= 2.5. See [test.yml](.github/workflows/test.yml) for details

If you'd like to change `TargetRubyVersion`, see [Customization](#customization).


## Customization

If you'd like to customize the rubocop setting on your project, you can override it.

For example, if you want to change `TargetRubyVersion`, you can do it like:

```yml
# .rubocop.yml
inherit_gem:
  rubocop-dbl_config:
    - config/dbl.yml

# Override Setting
AllCops:
  TargetRubyVersion: 2.7.2
```
