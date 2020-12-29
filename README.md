# DBL Rubocop Config

![Test](https://github.com/dbl-works/rubocop-dbl/workflows/Test/badge.svg?branch=main)


RuboCop configuration for our Ruby on Rails projects.

[Official RoR RuboCop Configuration](https://github.com/rails/rails/blob/master/.rubocop.yml)



## Installation

Add this line to your application's `Gemfile`:

```ruby
group :development, :test do
  gem 'rubocop-dbl', github: 'dbl-works/rubocop-dbl'
end
```



## Usage

Add this line to your application's `.rubocop.yml`:

```yml
inherit_gem:
  rubocop-dbl:
    - config/dbl.yml
```

Or just run:

```console
$ rails generate rubocop-dbl:install
```



## Configuration


### TargetRubyVersion

We only support the latest 2 versions of ruby, which is currently >= 2.6. See [test.yml](.github/workflows/test.yml) for details

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

## build & install gem locally
```
gem build rubocop-dbl.gemspec
gem install rubocop-dbl-0.1.0.gem
irb
```
