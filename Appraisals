#
# run
# > bundle exec appraisal install
# to generate gemfiles
#
SUPPORTED_RUBOCOP_VERSIONS = %w[
  1.7
  1.24
].freeze

SUPPORTED_RAILS_VERSIONS = %w[
  6.1
  7.0
].freeze

SUPPORTED_RUBOCOP_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem 'rubocop', "~> #{version}.0"
    gem 'rails', '~> 6.0'
  end
end

SUPPORTED_RAILS_VERSIONS.each do |version|
  appraise "rails-#{version}" do
    gem 'rubocop', '~> 1'
    gem 'rails', "~> #{version}.0"
  end
end
