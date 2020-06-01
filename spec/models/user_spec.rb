require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(firstname: 'AlEx', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty') }

  describe 'Capitalization' do
    it 'capitalizes the firstname' do
      expect(user.firstname.capitalize).to eq('Alex')
    end
  end

  describe 'Fills' do
    it 'fills custom attributes' do
      user.email = 'abcd@example.com'
      expect(user.email).to eq('abcd@example.com')
    end
  end

  describe 'Read' do
    it 'reads a custom attribute attribute' do
      expect(user.read(user, 'firstname')).to eq('AlEx')
    end
  end
end
