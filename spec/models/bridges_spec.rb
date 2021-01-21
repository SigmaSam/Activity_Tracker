require 'rails_helper'

RSpec.describe Bridge, type: :model do
  User.delete_all
  Group.delete_all
  Routine.delete_all
  let!(:test_user) { User.create(name: 'test_user1') }
  let!(:test_group) { Group.create(name: 'test_group') }
  let!(:test_routine) { Routine.create(user_id: test_user.id, name: 'test_routine', hours: 12) }
  let!(:test_relation1) { Bridge.create(routine_id: test_routine.id, group_id: nil) }

  it 'The relation is not created if params are missing' do
    expect(test_relation1).to be_invalid
  end
end
