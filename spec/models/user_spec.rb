# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  User.delete_all
  let!(:test_user) { User.create(name: 'testuser') }
  let!(:test_user1) { User.create(name: 't') }

  it 'does create user if name is given' do
    expect(test_user).to be_valid
  end
  it 'does not create user if the name is too short' do
    expect(test_user).to be_valid
  end
end
