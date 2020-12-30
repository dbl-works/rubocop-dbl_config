# frozen_string_literal: true

module Api
  class UsersController < BaseController
    def empty_method
    end

    def non_empty_method
      memoised_method.nil?
    end

    private

    def memoised_method
      @memoised_method ||= 'some_thing'
    end
  end
end
