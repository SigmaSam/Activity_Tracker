require 'rails_helper'

RSpec.describe 'Sessions', type: :feature do
  context '#Authentication' do
    before do
      visit '/users/new'
      fill_in 'Your name here', with: 'testuser'
      click_button 'Sign Up'
    end

    it 'Logs me in' do
      visit '/log_in'
      fill_in 'Your name here', with: 'testuser'
      click_button 'Log In'
      expect(page).to have_content 'Groups'
    end

    it 'Fails Login Due to Wrong Username' do
      visit '/log_in'
      fill_in 'Your name here', with: 'wrong_username'
      click_on 'Log In'
      expect(page).to have_content 'Log In'
    end
  end
end
