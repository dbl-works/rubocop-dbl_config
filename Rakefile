# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

# rubocop:disable Rails/RakeEnvironment
task :rubocop_rails do
  rails_test_dir = 'tmp/rails_test'
  except_cops = %w[Style/StringLiterals Style/FrozenStringLiteralComment Style/SymbolArray].freeze

  rm_rf rails_test_dir
  sh "rails new #{rails_test_dir} --skip-webpack-install > /dev/null 2>&1"
  cp './test/fixture/.rubocop.yml', "#{rails_test_dir}/.rubocop.yml"
  cd rails_test_dir do
    # Rails generates files which have some rubocop
    # offenses(StringLiterals, FrozenStringLiteralComment SymbolArray Bundler/OrderedGems Style/ClassAndModuleChildren).
    #
    # Run rubocop and check there are no offenses except those rules.
    sh "rubocop --format tap --except=#{except_cops.join(',')} ."
  end
end
task :rubocop_examples do
  examples_dir = "#{__dir__}/examples"
  cd examples_dir do
    sh 'rubocop --format tap .'
  end
end
# rubocop:enable Rails/RakeEnvironment

task default: %i[test rubocop_rails rubocop_examples]
