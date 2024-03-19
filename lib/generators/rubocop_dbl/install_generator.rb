# typed: false

require 'rails/generators/base'
require 'active_support/core_ext/string'
require 'railties'

module RubocopDbl
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Creates a .rubocop.yml config file that inherits from the official Ruby on Rails .rubocop.yml.'

      def create_config_file
        file_method = config_file_exists? ? :prepend : :create
        content = defined?(Rails) ? config_file_content_rails : config_file_content
        send :"#{file_method}_file", config_file_path, config_file_content
      end

      private

      def config_file_exists?
        File.exist?(config_file_path)
      end

      def config_file_path
        '.rubocop.yml'
      end

      def config_file_content
        <<~HEREDOC
          inherit_gem:
            rubocop-dbl:
              - config/dbl.yml

          # we do not want to overwrite the base-array (from rubocop-dbl), but extend it
          inherit_mode:
            merge:
              - Exclude

          AllCops:
            TargetRubyVersion: 3.3.0
            Exclude:
              - 'sorbet/rbi/shims/**/*'
        HEREDOC
      end

      def config_file_content
        <<~HEREDOC
          require:
            - rubocop-rails

          inherit_gem:
            rubocop-dbl:
              - config/dbl.yml

          inherit_mode:
            merge:
              - Exclude

          AllCops:
            TargetRubyVersion: 3.3.0
            Exclude:
              - 'sorbet/rbi/shims/**/*'

          # Defaults for this cop are found here:
          # https://github.com/rubocop/rubocop-rails/blob/master/config/default.yml
          #
          # Add customizations below.
          #
          # Ensure to document why we change a default by linking the corresponding PR.
          # For example:
          #
          #     Rails/ActionFilter:
          #       Enabled: false
          #

          # @NOTE: added: "staging"
          Rails/UnknownEnv:
            Environments:
              - production
              - development
              - test
              - staging

          # @NOTE: disabled
          Rails/HttpStatus:
            Enabled: false

          # @NOTE: disabled
          Rails/ApplicationController:
            Enabled: false


          #
          # @NOTE: all the cops ahead are "pending" in the current default config
          #
          Rails/ActiveRecordCallbacksOrder:
            Enabled: true

          Rails/AfterCommitOverride:
            Enabled: true

          Rails/AttributeDefaultBlockValue:
            Enabled: true

          Rails/FindById:
            Enabled: true

          Rails/Inquiry:
            Enabled: true

          Rails/MailerName:
            Enabled: true

          Rails/MatchRoute:
            Enabled: true

          Rails/NegateInclude:
            Enabled: true

          Rails/Pluck:
            Enabled: true

          Rails/PluckInWhere:
            Enabled: true

          Rails/RenderInline:
            Enabled: true

          Rails/RenderPlainText:
            Enabled: true

          Rails/ShortI18n:
            Enabled: true
            EnforcedStyle: aggressive

          Rails/SquishedSQLHeredocs:
            Enabled: true

          Rails/WhereEquals:
            Enabled: true

          Rails/WhereExists:
            Enabled: true

          Rails/WhereNot:
            Enabled: true
        HEREDOC
      end
    end
  end
end
