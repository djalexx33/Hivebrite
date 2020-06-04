require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new({firstname: 'AlEx', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty'}) }

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
      user.password = nil
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
end
