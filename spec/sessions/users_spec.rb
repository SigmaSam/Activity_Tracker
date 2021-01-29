require 'rails_helper'

RSpec.describe 'Users', type: :feature do
  it 'Creates a new user with the right params' do
    visit 'users/new'
    fill_in 'Your name here', with: 'testuser'
    click_button 'Sign Up'
    expect(page).to have_content 'Groups'
  end

  it 'creates a user' do
    visit 'users/new'
    fill_in 'Your name here', with: 'i'
    click_button 'Sign Up'
    expect{ raise page }.to raise_error
  end
end
