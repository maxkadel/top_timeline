# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, dependent: :destroy
  after_save :create_or_update_surgery_event

  # TODO: Only run this if it's new or the surgery date changes
  def create_or_update_surgery_event
    surgery_event = Event.find_or_create_by(name: 'Surgery', user_id: id)
    surgery_event.start_time = surgery_date.to_datetime if surgery_date
    surgery_event.save!
  end
end
