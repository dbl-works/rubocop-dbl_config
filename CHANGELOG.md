## unreleased
* fixes file names and other general code clean up
* enable rubocop-rails' default cops
* disable extra indentation for private methods
* Use around for Layout/EmptyLinesAroundAccessModifier
* disable Rails/HttpStatus cop, [docs](https://www.rubydoc.info/gems/rubocop-rspec/RuboCop/Cop/RSpec/Rails/HttpStatus), to allow `status: 404` rather than `status: :not_found` in controllers
* disable Rails/ApplicationController cop, [docs](https://rubocop.readthedocs.io/projects/rails/en/stable/cops_rails/#railsapplicationcontroller), to allow controllers to inherit e.g. from `Base` instead of `ApplicationController`

## 0.1.0
Initial setup of a DBL-wide rubocop config, to be used in all projects if applicable.
Please:
* adhere to proper versioning
* GitHub releases (we can publish a private package) => nicer for Dependabot
* keep a meaningful Changelog
* keep the README up-to-date, so we can copy-paste a "production-ready" snippet from the README to any project
