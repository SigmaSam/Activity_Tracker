require 'rails_helper'

RSpec.describe Routine, type: :model do
  User.delete_all
  Routine.delete_all
  let!(:test_user) { User.create(name: 'testuser') }
  let!(:test_group) { Group.create(name: 'testgroup') }
  let!(:test_routine) do
    Routine.create(group_id: test_group.id, user_id: test_user.id, name: 'test_routine', hours: 13)
  end
  let!(:test_routine1) { Routine.create(group_id: nil, user_id: nil, name: 'test_routine1', hours: 13) }

  it 'Does create the item when all params are given' do
    expect(test_routine).to be_valid
  end

  it 'Does not create item if user_id and group_id does not exist' do
    expect(test_routine1).to be_invalid
  end
end
