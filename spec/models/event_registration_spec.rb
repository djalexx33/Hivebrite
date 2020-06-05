require 'rails_helper'

RSpec.describe EventRegistration, type: :model do
  let(:user) { User.new({firstname: 'AlEx', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty'}) }
  before { user.save }

  describe 'Validation' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without a registration date' do
      user.registration_date = nil
      expect(user).to_not be_valid
    end
  end
end
