SUPPORTED_VERSIONS = %w[1.5 1.6 1.7].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem 'rubocop', "~> #{version}.0"
  end
end
