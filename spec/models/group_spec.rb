require 'rails_helper'

RSpec.describe Group, type: :model do
  User.delete_all
  Group.delete_all
  let!(:test_user) { User.create(name: 'test_user1') }
  let!(:test_group) { Group.create(name: 'testgroup') }
  let!(:test_group1) { Group.create(name: '') }

  it 'Does not create group if ' do
    expect(test_group1).to be_invalid
  end

  it 'Group is created when all params are given' do
    expect(test_group).to be_valid
  end
end
