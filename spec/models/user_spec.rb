require 'rails_helper'

RSpec.describe User, type: :model do
  let(:john) { Admin.new(firstname: 'John', lastname: 'Doe', email: 'john@doe.com', password: 'azerty') }
  let(:user) { User.new(firstname: 'Alex', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty') }

  describe 'Sign Up' do
    it 'creates new user account' do
      visit new_user_registration_path
      email = 'abcd@example.com'
      fill_in 'email', with: email
      fill_in 'password', with: 'password'
      fill_in 'firstname', with: 'firstname'
      fill_in 'lastname', with: 'lastname'
      click_button 'Sign up'
      expect(page).to have_content 'Welcome! You have signed up successfully.'
    end
  end

  describe 'Profile' do
    it 'fills custom attributes' do
      visit edit_user_registration_path
      email = 'abcd@example.com'
      fill_in 'email', with: email
      fill_in 'password', with: 'password'
      fill_in 'firstname', with: 'firstname'
      fill_in 'lastname', with: 'lastname'
      expect(page).to have_content 'Welcome! You have signed up successfully.'
    end
  end

  describe 'Event' do
    it 'fills custom attributes' do
      visit edit_event_path
      fill_in 'title', with: 'title'
      fill_in 'date', with: 'date'
      fill_in 'description', with: 'description'
      fill_in 'location', with: 'location'
      fill_in 'owner', with: 'owner'
      fill_in 'full', with: 'full'
      expect(page).to have_content 'Welcome! You have signed up successfully.'
    end
  end
end
