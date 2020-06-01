require 'rails_helper'

RSpec.describe Admin, type: :model do
  subject {
    described_class.new(password: 'azerty',
                        email: 'john@doe.com')
  }
  let(:user) { User.new(firstname: 'Alex',
                        lastname: 'Bart',
                        email: 'alex.bart@gmail.com',
                        password: 'azerty') }

  let(:event) { Event.new(title: 'Climate Summit 2020',
                          date: 'Tue, 9 June 2020',
                          description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.',
                          location: 'Online Event',
                          owner: subject,
                          full: false) }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Managing' do
    it 'changes the password' do
      expect(subject.change(user, 'password', 'querty')).to_not eq('azerty')
    end

    it 'changes the title' do
      expect(subject.change(event, 'title', 'Act for Climate 2020')).to_not eq('Climate Summit 2020')
    end
  end

  describe 'Read' do
    it 'reads an Event attribute' do
      expect(subject.read(event, 'title')).to eq('Climate Summit 2020')
    end
  end

  describe 'Option' do
    it 'makes a custom attribute optional' do
      expect(subject.change(user, 'optional', 'required')).not_to eq('optional')
      expect(subject.change(event, 'optional', 'required')).not_to eq('optional')
    end
  end
end
