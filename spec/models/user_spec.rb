# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:surgery_date) { '2021-03-27 16:57:29'.to_datetime }
  let(:updated_surgery_date) { '2021-03-31 12:00:00'.to_datetime }
  let(:user) do
    described_class.create!(
      email: 'testuser@testdomain.com',
      password: 'password',
      password_confirmation: 'password',
      surgery_date: surgery_date
    )
  end

  it 'can create a new user' do
    expect(user.email).to eq 'testuser@testdomain.com'
    expect(user.surgery_date).to eq surgery_date
    expect(user.events.count).to eq 1
    expect(user.events.first.start_time).to eq surgery_date
  end

  it 'can update the surgery date' do
    user.surgery_date = updated_surgery_date
    user.save!
    expect(user.surgery_date).to eq updated_surgery_date
    expect(user.events.first.start_time).to eq updated_surgery_date
  end
end
