# frozen_string_literal: true

class User < ApplicationRecord
  def self.find_by(**kwargs)
    where(**kwargs).first
  end

  belongs_to :other_model, class: 'OtherModel'

  validates :email, presence: true
  validate :valid_email

  def blank_method
  end

  def with_email?
    email.present?
  end

  private

  def valid_email
    email.match?(/@dbl.works/)
  end
end
