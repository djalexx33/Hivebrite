require 'rails_helper'

RSpec.describe UserSignupForm, type: :model do
  describe 'validations' do
    [:firstname, :lastname, :email, :password, :role].each do |field|
      it { should validate_presence_of(field) }
    end

    context 'when a user is created with all attibutes' do
      it 'validates form successfully' do
        form = described_class.new(firstname: 'Alex',
                                   lastname: 'Barat',
                                   email: 'alex.barat@gmail.com',
                                   password: 'azerty',
                                   role: 'user')
        expect(form).to be_valid
      end
    end

    context 'when a user is created without a firstname' do
      it 'fails to validate the form' do
        form = described_class.new(lastname: 'Barat',
                                   email: 'alex.barat@gmail.com',
                                   password: 'azerty',
                                   role: 'user')
        expect(form).to_not be_valid
      end
    end

    context 'when a user is created without a lastname' do
      it 'fails to validate the form' do
        form = described_class.new(firstname: 'Alex',
                                   email: 'alex.barat@gmail.com',
                                   password: 'azerty',
                                   role: 'user')
        expect(form).to_not be_valid
      end
    end

    context 'when a user is created without an email' do
      it 'fails to validate the form' do
        form = described_class.new(firstname: 'Alex',
                                   lastname: 'Barat',
                                   password: 'azerty',
                                   role: 'user')
        expect(form).to_not be_valid
      end
    end

    context 'when a user is created without a password' do
      it 'fails to validate the form' do
        form = described_class.new(firstname: 'Alex',
                                   lastname: 'Barat',
                                   email: 'alex.barat@gmail.com',
                                   role: 'user')
        expect(form).to_not be_valid
      end
    end

    context 'when a user is created without a role' do
      it 'fails to validate the form' do
        form = described_class.new(firstname: 'Alex',
                                   lastname: 'Barat',
                                   email: 'alex.barat@gmail.com',
                                   password: 'azerty')
        expect(form).to_not be_valid
      end
    end
  end
end
