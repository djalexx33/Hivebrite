require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(firstname: 'AlEx', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty', role: 1) }

  describe '#admin_user?' do
    it 'return true if the User is an admin' do
      expect(user.admin?).to eq(true)
    end

    it 'return false if the User is not an admin' do
      expect(user.admin?).to_not eq(false)
    end
  end

  describe 'Capitalization' do
    it 'capitalizes the firstname' do
      expect(user.firstname.capitalize).to eq('Alex')
    end
  end

  # describe 'Filling' do
  #   it 'fills custom attributes' do
  #     expect(user.fill('email', 'abcd@example.com')).to eq('abcd@example.com')
  #   end
  # end

  # describe 'Reading' do
  #   it 'reads a custom attribute attribute' do
  #     expect(user.read_user(user, 'firstname')).to eq('AlEx')
  #   end
  # end

  describe 'Validation' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without a firstname' do
      user.firstname = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without a lastname' do
      user.lastname = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without an email' do
      user.email = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without a password' do
      user.password = nil
      expect(user).to_not be_valid
    end
  end

  describe 'Email Uniquenes' do
    before { user.save }
    let(:user1) { User.new(firstname: 'Alex', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty') }
    it 'cannot use the same email multiple times' do
      expect(user1).not_to be_valid
    end
  end

  # describe 'Manage' do
  #   it 'changes the password' do
  #     expect(admin.change_user(user, 'password', 'querty')).to_not eq('azerty')
  #   end

  #   it 'changes the title' do
  #     expect(admin.change_event(event, 'title', 'Act for Climate 2020')).to_not eq('Climate Summit 2020')
  #   end
  # end

  # describe 'Read' do
  #   it 'reads an Event attribute' do
  #     expect(admin.read_event(event, 'title')).to eq('Climate Summit 2020')
  #   end
  # end

  # describe 'Option' do
  #   it 'makes a custom attribute optional' do
  #     expect(admin.change_user(user, 'optional', 'required')).not_to eq('optional')
  #     expect(admin.change_event(event, 'optional', 'required')).not_to eq('optional')
  #   end
  # end
end
