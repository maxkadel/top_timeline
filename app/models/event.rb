# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :user
  validates :name, presence: { message: 'cannot be blank' }
end
