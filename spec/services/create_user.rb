require 'rails_helper'

describe CreateUser do
  context 'integration tests' do
    before do
      @service = CreateUser.build
      @valid_params = User.new({ firstname: 'AlEx', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty' })
    end

    it 'creates a user in the database' do
      expect { @service.call(@valid_params) }.to change { User.count }.by(1)
    end
  end

  # RSpec.describe CreateUser do
#   let(:user) { User.new({firstname: 'AlEx', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty'}) }

#   describe 'Validation' do
#     it 'is valid with valid attributes' do
#       expect(user).to be_valid
#     end

#     it 'is not valid without a firstname' do
#       user.firstname = nil
#       expect(user).to_not be_valid
#     end

#     it 'is not valid without a lastname' do
#       user.lastname = nil
#       expect(user).to_not be_valid
#     end

#     it 'is not valid without an email' do
#       user.email = nil
#       expect(user).to_not be_valid
#     end

#     it 'is not valid without a password' do
#       user.password = nil
#       expect(user).to_not be_valid
#     end
#   end
end
