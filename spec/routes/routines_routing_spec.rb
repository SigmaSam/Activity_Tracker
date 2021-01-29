require 'rails_helper'

RSpec.describe RoutinesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/routines').to route_to('routines#index')
    end
  end
end