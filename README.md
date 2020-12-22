# rubocop-dbl_config
* add a gem version here (private package!)
* add a CI badge


RuboCop configuration for our Ruby on Rails projects.

[Official RoR RuboCop Configuration](https://github.com/rails/rails/blob/master/.rubocop.yml)

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem "rubocop-dbl_config"
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
==> TODO: adjust this script!

## Configuration

### TargetRubyVersion

Although Rails 6 only supports Ruby 2.5 or more, rubocop-dbl_config still supports Ruby 2.4 or more to support as many Ruby versions as possible.

If you'd like to change `TargetRubyVersion`, see [Customization](#customization).

### Rails/AssertNot, Rails/RefuteMethods

| cop | description |
| --- | --- |
| `Rails/AssertNot`     | Prefer assert_not over assert |
| `Rails/RefuteMethods` | Prefer assert_not_x over refute_x |

`assert_not` and `assert_not_xxx` methods are Rails assertion extension, so if you want to use these methods, require `activesupport` gem and inherit `ActiveSupport::TestCase`.

```rb
class AssertNotTest < ActiveSupport::TestCase
  def test_assert_not_method
    assert_not ...(code)...
  end

  def test_assert_not_nil_method
    assert_not_nil ...(code)...
  end
end
```

See also. [ActiveSupport::TestCase](https://api.rubyonrails.org/classes/ActiveSupport/TestCase.html)

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
  TargetRubyVersion: 2.6
```

This overrides `config/dbl.yml` setting with `TargetRubyVersion: 2.6`.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
