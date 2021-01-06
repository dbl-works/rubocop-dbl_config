# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<hr />

## [Unreleased]
* enable new cops by default [#23](https://github.com/dbl-works/rubocop-dbl/pull/23)
* enforce never having frozen string literal comments

## [0.2.2] - Mon, 04 Jan 2021
* Specify envs for rails (#20)
* enforce single quotes (#19)

## [0.2.1] - Tue, 29 Dec 2020
* fix filename for generator `rails generate rubocop_dbl:install` (files and dirs cannot have dashes for Rails's generators)

## [0.2.0] - Tue, 29 Dec 2020
* fixes file names and other general code clean up
* enable rubocop-rails' default cops
* disable extra indentation for private methods
* Use around for Layout/EmptyLinesAroundAccessModifier
* disable Rails/HttpStatus cop, [docs](https://www.rubydoc.info/gems/rubocop-rspec/RuboCop/Cop/RSpec/Rails/HttpStatus), to allow `status: 404` rather than `status: :not_found` in controllers
* disable Rails/ApplicationController cop, [docs](https://rubocop.readthedocs.io/projects/rails/en/stable/cops_rails/#railsapplicationcontroller), to allow controllers to inherit e.g. from `Base` instead of `ApplicationController`
* adds support (CI) for Ruby 3
* document how to release new versions

## [0.1.0]
Initial setup of a DBL-wide rubocop config, to be used in all projects if applicable.
Please:
* adhere to proper versioning
* GitHub releases (we can publish a private package) => nicer for Dependabot
* keep a meaningful Changelog
* keep the README up-to-date, so we can copy-paste a "production-ready" snippet from the README to any project
