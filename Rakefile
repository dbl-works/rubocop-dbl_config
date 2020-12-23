# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task :rubocop_rails do
  RAILS_TEST_DIR = "tmp/rails_test"
  EXCEPT_COPS = %w(Style/StringLiterals Style/FrozenStringLiteralComment Style/SymbolArray).freeze

  rm_rf RAILS_TEST_DIR
  sh "rails new #{RAILS_TEST_DIR} --skip-webpack-install > /dev/null 2>&1"
  cp "./test/fixture/.rubocop.yml", "#{RAILS_TEST_DIR}/.rubocop.yml"
  cd RAILS_TEST_DIR do
    # Rails generates files which have some rubocop
    # offenses(StringLiterals, FrozenStringLiteralComment).
    #
    # Run rubocop and check there are no offenses except those rules.
    sh "rubocop --format tap --except=#{EXCEPT_COPS.join(",")} ."
  end
end

task :rubocop_examples do
  EXAMPLES_DIR = "#{__dir__}/examples"
  cd EXAMPLES_DIR do
    sh "rubocop --format tap ."
  end
end

task default: %i(test rubocop_rails rubocop_examples)
